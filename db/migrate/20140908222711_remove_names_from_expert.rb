class RemoveNamesFromExpert < ActiveRecord::Migration
  def up
    remove_column :experts, :first_name
    remove_column :experts, :last_name
    remove_column :experts, :middle_name
  end

  def down
  end
end
