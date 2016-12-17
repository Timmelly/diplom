class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :role_name_eng
      t.string :role_name
      t.string :full_name
      t.timestamps
    end
  end
end
