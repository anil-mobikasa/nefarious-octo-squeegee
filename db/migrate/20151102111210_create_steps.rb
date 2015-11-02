class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :step_number
      t.string :instruction

      t.timestamps null: false
    end
  end
end
