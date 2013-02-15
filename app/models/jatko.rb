class Jatko < ActiveRecord::Base
  attr_accessible :name, :nick, :continue, :key, :tira
  validates :nick, :length => {:minimum => 2}
  validates :name, :length => {:minimum => 2}

  before_create :generate_key

  def generate_key 
    self.key = Digest::SHA1.hexdigest(Time.now.to_s+Random.rand.to_s+self.nick).slice(0..15)
  end

end
