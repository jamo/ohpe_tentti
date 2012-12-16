class AddTira < ActiveRecord::Migration
  def up
  	add_column :kisallis, :tira, :boolean
  end

  def down
  	remove_column :kisallis, :tira
  end
end
