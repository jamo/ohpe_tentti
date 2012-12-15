class CreateKisallis < ActiveRecord::Migration
  def change
    create_table :kisallis do |t|
      t.string :name
      t.string :opnro
      t.string :sposti
      t.integer :opintopisteita
      t.text :miksi
      t.decimal :opintojen_ka
      t.string :aiemmin
      t.text :miksiSina
      t.text :mitaOdotat
      t.text :muuta
      t.text :lempiolut

      t.timestamps
    end
  end
end
