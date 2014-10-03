class AddSubjectToContest < ActiveRecord::Migration
  def change
    add_column :contests, :subject, :text
  end
end
