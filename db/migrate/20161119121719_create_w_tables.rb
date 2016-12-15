class CreateWTables < ActiveRecord::Migration[5.0]
  def change
    create_table :w_tables do |t|
      t.references :geometry_classes, foreign_key: true
      t.integer :front_side, limit: 5, null: false
      t.float :x, array: true, null: false
      t.float :y, array: true, null: false

      t.timestamps
    end
  end
end
