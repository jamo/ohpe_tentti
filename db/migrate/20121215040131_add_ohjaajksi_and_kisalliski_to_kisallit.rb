class AddOhjaajksiAndKisalliskiToKisallit < ActiveRecord::Migration
  def up
    add_column :kisallis, :ohjaaja, :boolean
    add_column :kisallis, :kisalli, :boolean

  end
  
  def down
    remove_column :kisallis, :ohjaaja
    remove_column :kisallis, :kisalli
  end
end
