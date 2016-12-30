class Moderator < ApplicationRecord
	has_many :posts
	
	has_secure_password
end
