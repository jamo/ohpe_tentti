class AddNameToAnswer < ActiveRecord::Migration
  def up
    add_column :answers, :name, :string
  end
  
  def down
    remove_column :answers, :name
  end
end
