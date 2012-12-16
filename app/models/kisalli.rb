class Kisalli < ActiveRecord::Base
  attr_accessible :aiemmin, :lempiolut, :miksi, :miksiSina, :mitaOdotat, :muuta, :name, :opintojen_ka, :opintopisteita, :opnro, :sposti, :ohjaaja, :kisalli, :tira

  validates :name, :uniqueness => true, :length => {:minimum => 2}
  validates :sposti, :uniqueness => true, :length => {:minimum => 4}
  validates :opnro, :uniqueness => true, :length => {:minimum => 7}  
  validates :aiemmin, :presence => true
  validates :miksiSina, :presence => true
  validates :mitaOdotat, :presence => true
  validates :opintojen_ka, :presence => true
  validates :opintopisteita, :presence => true

  
end
