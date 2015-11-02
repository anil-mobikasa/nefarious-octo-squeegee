class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :middle_name, :string
    add_column :users, :last_name, :string
    add_column :users, :location, :string
    add_column :users, :agreement, :boolean
    add_column :users, :gender, :string
    add_column :users, :height, :string
    add_column :users, :weight, :string
    add_column :users, :health_insurance, :string
    add_column :users, :uid_number, :string
    add_column :users, :address, :string
    add_column :users, :dob, :string
    add_column :users, :doj, :string
    add_column :users, :approved, :boolean
  end
end
