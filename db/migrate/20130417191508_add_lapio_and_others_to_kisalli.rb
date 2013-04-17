class AddLapioAndOthersToKisalli < ActiveRecord::Migration
  def change
    add_column :kisallis, :lapio, :boolean, default: false
    add_column :kisallis, :c, :boolean, default: false
    add_column :kisallis, :ohpe1, :boolean, default: false
    add_column :kisallis, :ohja1, :boolean, default: false
    add_column :kisallis, :tikape, :boolean, default: false
    add_column :kisallis, :tito, :boolean, default: false
    add_column :kisallis, :tiralaskarit, :boolean, default: false
  end
end
