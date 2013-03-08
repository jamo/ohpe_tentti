class Kisalli < ActiveRecord::Base
  attr_accessible :aiemmin, :lempiolut, :miksi, :miksiSina, :mitaOdotat, :muuta, :name, :opintojen_ka, :opintopisteita, :opnro, :sposti, :ohjaaja, :kisalli, :tira, :ohpe, :ohja

  scope :current, where(deprecated: false)

  validates :name, :uniqueness => true, :length => {:minimum => 2}, on: current
  validates :sposti, :uniqueness => true, :length => {:minimum => 4}, on: current
  validates :opnro, :uniqueness => true, :length => {:minimum => 7}, on: current
  validates :aiemmin, :presence => true, on: current
  validates :miksiSina, :presence => true, on: current
  validates :mitaOdotat, :presence => true, on: current
  validates :opintojen_ka, :presence => true, on: current
  validates :opintopisteita, :presence => true, on: current
end
