class CreateContestRequests < ActiveRecord::Migration
  def change
    create_table :contest_requests do |t|
      t.text :goal
      t.text :tasks
      t.text :annotation
      t.text :problem
      t.text :audience
      t.text :real_methods
      t.text :results
      t.text :multiplicativity
      t.text :plan
      t.text :estimates
      t.integer :user_id

      t.timestamps
    end
  end
end
