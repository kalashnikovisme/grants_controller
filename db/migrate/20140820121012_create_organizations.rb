class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.text :title
      t.text :url
      t.text :org_type

      t.timestamps
    end
  end
end
