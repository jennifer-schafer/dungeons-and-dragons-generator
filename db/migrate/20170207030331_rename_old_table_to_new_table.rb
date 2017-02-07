class RenameOldTableToNewTable < ActiveRecord::Migration
  def change
    rename_table :dugeons, :dungeons
  end
end
