class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :email, :password, :password_confirmation

  validates :email, :presence => true, :uniqueness => true, :email_format => true
  validates_presence_of [:password, :password_confirmation]
end
