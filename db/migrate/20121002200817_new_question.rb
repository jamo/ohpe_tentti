class NewQuestion < ActiveRecord::Migration
  def up
    create_table :questions do |t|
      t.string :nick
      t.string :email
      t.text :other
    end
  end

  def down
    drop_table :question
  end
end
