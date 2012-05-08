class AddUniversityIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :university_id, :integer
  end
end
