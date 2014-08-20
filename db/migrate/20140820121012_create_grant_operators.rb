class CreateGrantOperators < ActiveRecord::Migration
  def change
    create_table :grant_operators do |t|
      t.text :title
      t.text :url

      t.timestamps
    end
  end
end
