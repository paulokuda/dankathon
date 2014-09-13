class User < ActiveRecord::Base

    # Use built-in rails support for password protection
  has_secure_password
end
