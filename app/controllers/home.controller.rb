class HomeController < ApplicationController
	def create
		@user = User.new
	end

	def show
	end
end