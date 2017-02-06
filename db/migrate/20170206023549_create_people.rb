class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :race
      t.string :character_class
      t.string :personality
      t.string :alignment
      t.string :likes
      t.string :dislikes

      t.timestamps null: false
    end
  end
end
