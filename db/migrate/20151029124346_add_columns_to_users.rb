class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :location, :string
    add_column :users, :birthdate, :date
    add_column :users, :gender, :string
    add_column :users, :height, :string
    add_column :users, :weight, :string
    add_column :users, :health_insurance, :string
    add_column :users, :id_number, :string
  end
end
