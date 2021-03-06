class CreateUserRoles < ActiveRecord::Migration
  def change
    create_table :user_roles do |t|
      t.integer :role_id, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end
    add_index :user_roles, [:user_id, :role_id], unique:  true
  end
end
