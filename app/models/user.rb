# this syntax is kinda funky

class User < ActiveRecord::Base

  attr_accessible :name, :email, :password, :password_confirmation #These are variables? that the user can access/edit
  has_secure_password

  before_save { |user| user.email = email.downcase } # saves all emails as downcase

  validates :name, presence: true, length: { maximum: 14 }        # valudates that name is present, and maxlen is 14
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i        # what the fuck is this
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false } #not case sensitive : 
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  ## validates :password == :password_confirmation --- I added this :D

end

#   users.errors.full_messages  to see why 'saves' failed