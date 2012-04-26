class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.integer :speciality_id
      t.integer :university_id
      t.text :description

      t.timestamps
    end
  end
end
