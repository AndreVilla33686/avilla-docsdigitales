class CreateAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :admins do |t|
      t.string :nombre
      t.string :email
      t.string :rfc

      t.timestamps
    end
  end
end
