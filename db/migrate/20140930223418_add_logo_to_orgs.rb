class AddLogoToOrgs < ActiveRecord::Migration
  def change
    add_column :organizations, :logo, :text
  end
end
