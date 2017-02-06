class CreateDugeons < ActiveRecord::Migration
  def change
    create_table :dugeons do |t|
      t.string :monster
      t.integer :quantity
      t.string :difficulty
      t.string :special_ability
      t.string :loot

      t.timestamps null: false
    end
  end
end
