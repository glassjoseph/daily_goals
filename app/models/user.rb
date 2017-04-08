class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  validates :email, uniqueness: true
  has_many :dailies
  has_secure_password

  enum role: %w(default admin)
end
