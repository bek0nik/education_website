class AddCityIdToUniversities < ActiveRecord::Migration
  def change
    add_column :universities, :city_id, :integer
  end
end
