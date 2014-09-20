class AddLeadToHint < ActiveRecord::Migration
  def change
    add_column :hints, :lead, :text
  end
end
