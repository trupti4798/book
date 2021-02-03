class SessionsController < ApplicationController
	def new

	end

	def create
		userlogin = Userlogin.find_by_email(params[:email])
		if userlogin && userlogin.authenticate(params[:password])
  	  	session[:userlogin_id] = userlogin.id
  	  	redirect_to(action: 'welcome')
  	    else
  	    	flash.now[:alert] = "Email or password is invalid"
  	  	    render "new"
  	  	end
  	end

  	def destroy
  		session[:userlogin_id] = nil
  	    redirect_to root_url, notice: "Logged out!"
  	end

  def welcome
  end
 
end
