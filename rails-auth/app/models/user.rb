class User < ActiveRecord::Base
  has_secure_password
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
