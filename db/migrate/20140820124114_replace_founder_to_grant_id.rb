class ReplaceFounderToGrantId < ActiveRecord::Migration
  def up
    remove_column :contests, :founder
    add_column :contests, :grant_operator_id, :integer
  end
end
