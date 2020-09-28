class CreateSucursals < ActiveRecord::Migration[6.0]
  def change
    create_table :sucursals do |t|
      t.string :nomSucursal
      t.string :calle
      t.string :colonia
      t.string :numExterior
      t.string :numInterior
      t.string :cpostal
      t.string :ciudad
      t.string :pais
      t.string :empresa

      t.timestamps
    end
  end
end
