class Add < ActiveRecord::Migration
  def up
    add_column :jatkos, :key, :string
    add_index :jatkos, :key
  end

  def down
    remove_index :jatkos, :key
    remove_column :jatkos, :key
  end
end
