class AddUniversityIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :university_id, :integer
  end
end
