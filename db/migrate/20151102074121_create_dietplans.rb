class CreateDietplans < ActiveRecord::Migration
  def change
    create_table :dietplans do |t|
    	t.string :title
      t.text :description
      t.string :recipies
      t.string :step

      t.timestamps null: false
    end
  end
end
