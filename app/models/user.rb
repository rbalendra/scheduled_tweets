#email:string
#password_digest:string
#
#
#password:string virtual
#password_confirmation:string virtual

class User < ApplicationRecord
  has_many :twitter_accounts
  has_secure_password # virtual attributes that wont get saved to db. When you submit a password it hashes the password through bcrypt gem inside db.

  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" }
end
