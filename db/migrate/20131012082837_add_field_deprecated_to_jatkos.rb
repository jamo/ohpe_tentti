class AddFieldDeprecatedToJatkos < ActiveRecord::Migration
  def up
    add_column :jatkos, :deprecated, :boolean, :default => false
    Kisalli.all.each {|a| a.update_attribute(:deprecated, true)}
  end

  def down
    remove_column :jatkos, :deprecated
  end
end
