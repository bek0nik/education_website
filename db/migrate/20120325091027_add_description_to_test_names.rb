class AddDescriptionToTestNames < ActiveRecord::Migration
  def change
    add_column :test_names, :description, :text
  end
end
