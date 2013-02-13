class AddDepricatedToAnswers < ActiveRecord::Migration
  def up
    add_column :answers, :deprecated, :boolean ,:defaul => false
    Answer.all.each {|a| a.update_attribute(:deprecated, true)}
  end

  def down
    remove_column :answers, :deprecated
  end
end
