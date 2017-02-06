class CreateEncounters < ActiveRecord::Migration
  def change
    create_table :encounters do |t|
      t.string :tempermant
      t.integer :quantity
      t.string :race
      t.string :difficulty
      t.text :background

      t.timestamps null: false
    end
  end
end
