class Kisalli < ActiveRecord::Base
  attr_accessible :aiemmin, :lempiolut, :miksi, :miksiSina, :mitaOdotat, :muuta, :name, :opintojen_ka, :opintopisteita, :opnro, :sposti, :ohjaaja, :kisalli, :tira, :ohpe, :ohja, :ohpes, :ohjas

  scope :current, where(deprecated: false)

  validates :name, :length => {:minimum => 2}
  validates :sposti, :length => {:minimum => 4}
  validates :opnro, :length => {:minimum => 7}
  validates :aiemmin, :presence => true
  validates :miksiSina, :presence => true
  validates :mitaOdotat, :presence => true
  validates :opintojen_ka, :presence => true
  validates :opintopisteita, :presence => true

end
