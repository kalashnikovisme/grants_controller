class AddContestTitleToRequest < ActiveRecord::Migration
  def change
    add_column :contest_requests, :contest_title, :text
  end
end
