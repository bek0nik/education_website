class AddVariantToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :variant_3, :string
    add_column :questions, :variant_4, :string
  end
end
