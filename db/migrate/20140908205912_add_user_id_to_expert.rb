class AddUserIdToExpert < ActiveRecord::Migration
  def change
    add_column :experts, :user_id, :integer
  end
end
