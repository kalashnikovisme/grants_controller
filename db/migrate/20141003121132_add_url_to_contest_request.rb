class AddUrlToContestRequest < ActiveRecord::Migration
  def change
    add_column :contest_requests, :contest_url, :text
  end
end
