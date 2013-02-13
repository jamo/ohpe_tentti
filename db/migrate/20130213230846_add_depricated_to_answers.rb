class AddDepricatedToAnswers < ActiveRecord::Migration
  def up
    add_column :answers, :deprecated, :boolean ,:defaul => false, :null => false
  end

  def down
    remove_column :answers, :deprecated
  end
end
