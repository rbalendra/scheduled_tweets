class User < ApplicationRecord
  has_secure_password # virtual attributes that wont get saved to db. When you submit a password it hashes the password through bcrypt gem inside db.
end
