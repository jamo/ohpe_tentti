class Answer < ActiveRecord::Base
  attr_accessible :email, :nick, :other, :name, :deprecated

  validates :nick, :length => {:minimum => 2}
  validates :email, :confirmation => true, :presence => true
  validate :validate_email_uniqeness_in_scope
  validate :validate_nick_uniqeness_in_scope
  validates :name, :presence => true
  before_create :generate_key

  scope :current, where(deprecated: false)
  def generate_key 
    self.key = Digest::SHA1.hexdigest(Time.now.to_s+Random.rand.to_s+self.nick).slice(0..15)
  end

  def validate_email_uniqeness_in_scope
    errors.add(:email) << "is already taken" if Answer.current.any?{|a| a.email==email}
  end

  def validate_nick_uniqeness_in_scope
    errors.add(:nick) << "is already taken" if Answer.current.any?{|a| a.nick==nick}
  end
end
