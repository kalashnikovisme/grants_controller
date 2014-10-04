class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :title
      t.text :body
      t.text :slug
      t.text :section

      t.timestamps
    end
  end
end
