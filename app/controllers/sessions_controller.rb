class SessionsController < ApplicationController
	def new
	end


	def create
		user = authenticate_session(session_params)
		sign_in(user)
		redirect_to galleries_path
	end

	def destroy
		sign_out
		redirect_to galleries_path
	end

	private

	def session_params
		params
			.require(:session)
			.permit(:email, :password)
	end
end