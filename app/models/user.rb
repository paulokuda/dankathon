class User < ActiveRecord::Base
  has_secure_password

  # relationships
  has_many :items

  # validations
  validates :username, presence: true, uniqueness: { case_sensitive: false}

  validates_presence_of :password, on: :create 
  validates_presence_of :password_confirmation, on: :create 
  validates_confirmation_of :password, message: "does not match"
  validates_length_of :password, minimum: 4, message: "must be at least 4 characters long", allow_blank: true

  # scopes 
  scope :alphabetical, -> { order('last_name, first_name') }
  

  def self.authenticate(username, password)
    find_by_username(username).try(:authenticate, password)
  end
end
