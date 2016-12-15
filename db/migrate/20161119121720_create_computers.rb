class CreateComputers < ActiveRecord::Migration[5.0]
  def change
    create_table :computers do |t|
      t.string :name, limit: 10, null: false
      t.float :x, array: true, null: false
      t.float :y, array: true, null: false
      t.string :ip, limit: 20, null: false
      t.string :mac_address, limit: 20, null: false
      t.text :specification, null: false
      t.references :w_table, foreign_key: true

      t.timestamps
    end
  end
end
