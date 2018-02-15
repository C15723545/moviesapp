class PagesController < ApplicationController
	def home
	end

	def about
		@title = 'Title';
		@content = 'This is a paragraph';
	end
end
