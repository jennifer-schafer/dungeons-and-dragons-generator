class CreateCarousings < ActiveRecord::Migration
  def change
    create_table :carousings do |t|
      t.integer :dice_roll
      t.text :result

      t.timestamps null: false
    end
  end
end
