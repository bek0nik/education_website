class AddLogoToImages < ActiveRecord::Migration
  def change
    add_column :images, :logo, :boolean
  end
end
