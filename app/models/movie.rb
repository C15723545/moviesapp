class Movie < ApplicationRecord
	belongs_to :genre
	validates :title, presence: true
	validates :title, uniqueness: true
	has_many :comments, :dependent => :destroy

	def average_stars
	comments.average(:stars)
	end
end


