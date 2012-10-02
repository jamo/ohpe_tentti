class Questions < ActiveRecord::Base
  #include ActionView::Helpers
    include ActionView::Helpers::NumberHelper

  attr_accessible :nick, :email, :other, :email_confirmation
  validates :nick, :uniqueness => true, :length => {:minimum => 2}
  validates :email, :confirmation => true, :presence => true, :uniqueness => true
 
=begin
  avail = :'c++'       => :cpp,
      :cplusplus   => :cpp,
      :ecmascript  => :java_script,
      :ecma_script => :java_script,
      :rhtml       => :erb,
      :eruby       => :erb,
      :irb         => :ruby,
      :javascript  => :java_script,
      :js          => :java_script,
      :pascal      => :delphi,
      :patch       => :diff,
      :plain       => :text,
      :plaintext   => :text,
      :xhtml       => :html,
      :yml         =>:text
=end  
  before_create :generate_key
  
  def generate_key 
    self.key = Digest::SHA1.hexdigest(Time.now.to_s+Random.rand.to_s+self.nick).slice(0..15)
  end
  
end
