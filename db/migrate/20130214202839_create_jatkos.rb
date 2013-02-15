class CreateJatkos < ActiveRecord::Migration
  def up
    create_table :jatkos do |t|
      t.string :name
      t.string :nick
      t.string :continue

      t.timestamps
    end
  end

  def down
    drop_table :jatkos
  end
end
