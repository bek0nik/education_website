class AddCategoryIdToSpecialities < ActiveRecord::Migration
  def change
    add_column :specialities, :category_id, :integer
  end
end
