class CreateGeometryClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :geometry_classes do |t|
      t.string :room, limit: 10, null: false
      t.string :bilding, limit: 5, null: false
      t.integer :floor, limit: 3, null: false
      t.float :x, array: true, null: false
      t.float :y, array: true, null: false
      t.string :ip

      t.timestamps
    end
  end
end
