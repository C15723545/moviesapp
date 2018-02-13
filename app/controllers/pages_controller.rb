class PagesController < ApplicationController
  def home
  end

  def about
	@user = User.find(params[:id])
  end
end
