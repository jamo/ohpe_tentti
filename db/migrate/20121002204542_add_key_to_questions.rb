class AddKeyToQuestions < ActiveRecord::Migration
  def up
      add_column :questions, :key, :string
      add_index :questions, :key
  end
  
  def down
  end
end
