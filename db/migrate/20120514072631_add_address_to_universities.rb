class AddAddressToUniversities < ActiveRecord::Migration
  def change
    add_column :universities, :address, :string
    #add_column :university_translations, :address, :string
  end
end
