class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.text :title
      t.text :description
      t.text :link
      t.text :founder

      t.timestamps
    end
  end
end
