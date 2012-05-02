class AddCipherToSpecialities < ActiveRecord::Migration
  def change
    add_column :specialities, :cipher, :string
  end
end
