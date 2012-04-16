class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.integer :test_name_id
      t.string :variant_1
      t.string :variant_2
      t.string :correct

      t.timestamps
    end
  end
end
