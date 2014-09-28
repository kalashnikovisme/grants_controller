class AddEndDateToContest < ActiveRecord::Migration
  def change
    add_column :contests, :end_date, :datetime
  end
end
