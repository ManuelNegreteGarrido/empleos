class AddUserIdToJobapplication < ActiveRecord::Migration[7.0]
  def change
    add_column :jobapplications, :user_id, :integer
    add_index :jobapplications, :user_id
  end
end
