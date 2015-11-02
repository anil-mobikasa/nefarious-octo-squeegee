class CreateDietplans < ActiveRecord::Migration
  def change
    create_table :dietplans do |t|
      t.string :title
      t.belongs_to :recipy, index: true
      t.belongs_to :step, index: true
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :dietplans, :recipies
    add_foreign_key :dietplans, :steps
    add_foreign_key :dietplans, :users
  end
end
