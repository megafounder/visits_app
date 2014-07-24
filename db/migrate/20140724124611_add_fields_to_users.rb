class AddFieldsToUsers < ActiveRecord::Migration
  def change
     add_column :users, :name, :string
     add_column :users, :location_id, :integer
     add_column :users, :visit_id, :integer
     add_column :users, :premium, :boolean

  end
end
