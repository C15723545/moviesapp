class User < ApplicationRecord
	has_secure_password
	validates :email, presence: true
	validates_uniqueness_of :email
	has_many :comments, :dependent => :destroy
end
