class CreateExperts < ActiveRecord::Migration
  def change
    create_table :experts do |t|
      t.text :first_name
      t.text :middle_name
      t.text :last_name
      t.text :job
      t.text :post
      t.text :degree

      t.timestamps
    end
  end
end
