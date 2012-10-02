class DropTablePastes < ActiveRecord::Migration
  def up
    drop_table :pastes
  end

  def down
  end
end
