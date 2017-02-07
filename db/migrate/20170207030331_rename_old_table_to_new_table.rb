class RenameOldTableToNewTable < ActiveRecord::Migration
  def change
    rename_table :dugeon, :dungeon
  end
end
