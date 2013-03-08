class AddFieldDeprecatedToKisallis < ActiveRecord::Migration
  def up
    add_column :kisallis, :deprecated, :boolean, :default => false
    Kisalli.all.each {|a| a.update_attribute(:deprecated, true)}
  end

  def down
    remove_column :kisallis, :deprecated
  end
end
