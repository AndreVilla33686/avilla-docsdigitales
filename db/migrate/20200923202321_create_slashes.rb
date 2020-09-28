class CreateSlashes < ActiveRecord::Migration[6.0]
  def change
    create_table :slashes do |t|
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
