class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.string :difficulty
      t.string :items_required
      t.text :quest
      t.text :details

      t.timestamps null: false
    end
  end
end
