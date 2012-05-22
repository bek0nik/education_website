class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :user_id
      t.integer :test_name_id
      t.integer :result
      t.datetime :finished
    end
  end
end
