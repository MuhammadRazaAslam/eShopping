class SignInController < ApplicationController

	def new
		byebug
	end

	private
	def params_sign_in
		params.require(:sign_in).permit(:email, :password)
	end


end
