class User < ApplicationRecord
	validates :email, presence: true , length: { maximum: 150 },format: {with: URI::MailTo::EMAIL_REGEXP},uniqueness: { case_sensitive: false}
	has_secure_password
	validates :password, length: { minimum: 6 } , allow_blank: true
end
