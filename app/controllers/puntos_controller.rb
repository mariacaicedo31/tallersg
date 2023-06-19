class PuntosController < ApplicationController
    def index
        @puntos = Punto.all
        render json: @puntos
    end
    
    def show
        @punto = Punto.find(params[:id])
        render json: @punto
    end

    def create
        punto = Punto.new(punto_params)
    
        if punto.save
          render json: punto, status: :created
        else
          render json: punto.errors, status: :unprocessable_entity
        end
    end

    def update
        punto = Punto.find(params[:id]) # Encuentra el punto que se va a editar
    
        if punto.update(punto_params) # Intenta actualizar los atributos del punto con los parámetros recibidos
          render json: punto
        else
          render json: punto.errors, status: :unprocessable_entity
        end
    end
    private

  def punto_params
     params.require(:punto).permit(:nombre, :tipo, :cx,:cy, :descripcion)
    end
end
