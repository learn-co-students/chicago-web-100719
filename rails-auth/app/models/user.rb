class User < ApplicationRecord
  has_secure_password
  has_many :deep_thoughts
  # def password=(new_password)
  #   digest = BCrypt::Password.create(new_password)
  #   self.password_digest = digest
  # end
  #
  # def password
  #   BCrypt::Password.new(password_digest)
  # end
  #
  # def authenticate(attempt)
  #   password == attempt
  # end
end
