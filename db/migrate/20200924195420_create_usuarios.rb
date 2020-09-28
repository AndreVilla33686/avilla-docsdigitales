class CreateUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :email
      t.string :rfc
      t.string :empresa
      t.string :password
      t.string :passwordC

      t.timestamps
    end
  end
end
