class UserController < ApplicationController


def add
    @user=User.new(user_params)
    if @user.save
      redirect_to(action:'regs')
    else
      flash[:notice]= "Error:Something wrong"
      render(action:'new')
    end
end

def new
     @user=User.new
end


def verify
  @user=User.find(user_params)
  if @user.name == @user_params[:name]
    if@user.password == @user_params[:password]
      redirect_to(action:'book/home')
  else
    render('register')
  end
  end
end

def user_params
    params.require(:users).permit(:name, :password, :email, :city)
end

end
