class AddSyksyToKisalli < ActiveRecord::Migration
  def change
    add_column :kisallis, :syksyOhpeOhjaaja, :boolean, default: false
    add_column :kisallis, :syksyOhjaOhjaaja, :boolean, default: false
  end
end
