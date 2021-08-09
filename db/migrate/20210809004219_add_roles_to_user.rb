class AddRolesToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :role, :integer, null: false, default: 0
  end
end
