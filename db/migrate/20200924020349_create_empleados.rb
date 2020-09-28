class CreateEmpleados < ActiveRecord::Migration[6.0]
  def change
    create_table :empleados do |t|
      t.string :nomEmpleado
      t.string :sucursal
      t.string :rfc
      t.string :puesto

      t.timestamps
    end
  end
end
