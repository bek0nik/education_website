class CreateTestNames < ActiveRecord::Migration
  def change
    create_table :test_names do |t|
      t.string :title

      t.timestamps
    end
  end
end
