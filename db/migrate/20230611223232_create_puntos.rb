class CreatePuntos < ActiveRecord::Migration[7.0]
  def change
    create_table :puntos do |t|
      t.string :nombre
      t.string :tipo
      t.string :cx
      t.string :cy
      t.string :descripcion

      t.timestamps
    end
  end
end
