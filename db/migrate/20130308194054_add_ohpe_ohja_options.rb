class AddOhpeOhjaOptions < ActiveRecord::Migration
  def up
    add_column :kisallis, :ohpe, :boolean, default: false
    add_column :kisallis, :ohja, :boolean, default: false
  end

  def down
  end
end
