class Kisalli < ActiveRecord::Base
  attr_accessible :aiemmin, :lempiolut, :miksi, :miksiSina, :mitaOdotat, :muuta, :name, :opintojen_ka, :opintopisteita, :opnro, :sposti, :ohjaaja, :kisalli, :tira, :ohpe, :ohja, :ohpes, :ohjas, :key

  scope :current, where(deprecated: false)

  validates :name, :length => {:minimum => 2}
  validates :sposti, :length => {:minimum => 4}
  validates :opnro, :length => {:minimum => 7}
  validates :aiemmin, :presence => true
  validates :miksiSina, :presence => true
  validates :mitaOdotat, :presence => true
  validates :opintojen_ka, :presence => true
  validates :opintopisteita, :presence => true

  before_create :generate_key

  def generate_key 
    self.key = Digest::SHA1.hexdigest(Time.now.to_s+Random.rand.to_s+self.opnro+self.miksiSina).slice(0..40)
  end

end
