class UsersController < ApplicationController
	def index

	end

  def show
  	
  	@user = User.find(params['id'])
  end

  def new
  	@user = User.new
  end

  def destroy

  end


   #this is for form submission in rails

  def create
    byebug
    @user = User.create(user_params) 
    if @user.save    
      flash[:notice] = "Your account was created successfully."    
      redirect_to user_path @user  
    else    
      flash[:alert] = "There was a problem saving your account."   
      redirect_to new_user_path  
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end