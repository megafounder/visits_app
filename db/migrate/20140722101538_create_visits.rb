class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.integer :location_id
      t.string :user_name
      t.datetime :from_date
      t.datetime :to_date
      t.timestamps
    end
  end
end
