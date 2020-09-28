class CreateAdministradors < ActiveRecord::Migration[6.0]
  def change
    create_table :administradors do |t|
      t.string :nomAdmin
      t.string :email
      t.string :rfc
      t.string :empresa
      t.string :contrasena
      t.string :contrasenaC

      t.timestamps
    end
  end
end
