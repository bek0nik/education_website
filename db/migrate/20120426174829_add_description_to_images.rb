class AddDescriptionToImages < ActiveRecord::Migration
  def change
    add_column :images, :description, :text
    rename_column :images, :name, :photo
  end
end
