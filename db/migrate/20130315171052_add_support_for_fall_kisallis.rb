class AddSupportForFallKisallis < ActiveRecord::Migration
  def up
    add_column :kisallis, :ohpes, :boolean, default: false
    add_column :kisallis, :ohjas, :boolean, default: false
  end

  def down
    remove_column :kisallis, :ohpes
    remove_column :kisallis, :ohjas
  end
end
