class CreateRoleUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :role_users do |t|

      t.timestamps
    end
  end
end
