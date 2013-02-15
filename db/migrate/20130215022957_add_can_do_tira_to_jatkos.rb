class AddCanDoTiraToJatkos < ActiveRecord::Migration
  def change
    add_column :jatkos, :tira, :boolean, :default => false
  end
end
