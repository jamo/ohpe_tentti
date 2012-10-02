class Answer < ActiveRecord::Base
  attr_accessible :email, :nick, :other
  
  attr_accessible :nick, :email, :other, :email_confirmation
  validates :nick, :uniqueness => true, :length => {:minimum => 2}
  validates :email, :confirmation => true, :presence => true, :uniqueness => true
 
  before_create :generate_key
  
  def generate_key 
    self.key = Digest::SHA1.hexdigest(Time.now.to_s+Random.rand.to_s+self.nick).slice(0..15)
  end
end
