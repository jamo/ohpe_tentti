class CreateAnswers < ActiveRecord::Migration
  def up
    create_table :answers do |t|
      t.string :nick
      t.string :email
      t.text :other
      t.string :key
      t.timestamps
    end
    add_index :answers, :key
  end
  def down
    drop_table :answers
  end
end
