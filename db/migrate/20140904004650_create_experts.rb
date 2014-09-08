class CreateExperts < ActiveRecord::Migration
  def change
    create_table :experts do |t|
      t.text :job
      t.text :post
      t.text :degree

      t.timestamps
    end
  end
end
