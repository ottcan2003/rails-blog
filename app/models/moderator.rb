class Moderator < ApplicationRecord
	has_many :posts
	
	has_secure_password

	validates :fullname, presence: true
	validates :username, presence: true, format: {with: /@/, message: 'is not valid'}
	validates :password, presence: true

end
