class AddKeyToKisalli < ActiveRecord::Migration
  def generate_key(kisalli)
    Digest::SHA1.hexdigest(Time.now.to_s+Random.rand.to_s+kisalli.opnro+kisalli.miksiSina).slice(0..40)
  end
  def change
    change_table :kisallis do |t|
      t.string :key
      add_index :kisallis, :key
    end
    Kisalli.all.each do |kisalli|
      kisalli.key = generate_key(kisalli)
      kisalli.save!
    end
  end
end
