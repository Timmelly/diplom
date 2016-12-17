class CreateRoleUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :role_users do |t| 
	  t.references :user
	  t.references :role
      t.jsonb :data

      t.timestamps
    end
  end
end
