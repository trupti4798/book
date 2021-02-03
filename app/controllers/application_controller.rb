class ApplicationController < ActionController::Base
	helper_method :current_userlogin
	def current_userlogin
		if session[:userlogin_id]
			@current_userlogin ||= Userlogin.find(session[:userlogin_id])
		else
			@current_userlogin = nil
		end
	end
end
