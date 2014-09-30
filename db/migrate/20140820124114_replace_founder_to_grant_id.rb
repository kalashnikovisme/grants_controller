class ReplaceFounderToGrantId < ActiveRecord::Migration
  def up
    remove_column :contests, :founder
    add_column :contests, :organization_id, :integer
  end
end
