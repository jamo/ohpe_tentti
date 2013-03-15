class NoMoreColonVsPerioidOnOpintopisteita < ActiveRecord::Migration
  def up
    change_column :kisallis, :opintopisteita, :string
  end

  def down
  end
end
