class ChangeDescriptionToImages < ActiveRecord::Migration
  def change
    change_column :images, :description, :string    
  end
end
