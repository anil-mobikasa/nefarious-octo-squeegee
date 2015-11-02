class CreateRecipies < ActiveRecord::Migration
  def change
    create_table :recipies do |t|
      t.string :description
      t.string :cultural_preferance
      t.string :ingredients
      t.string :unit_measure
      t.string :amount
      t.string :dietitian_tips
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :recipies, :users
  end
end
