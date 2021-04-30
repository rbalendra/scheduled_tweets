class RegistrationsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params) #Creates a new user in memory
    if @user.save #Saves the above memory info into the database
      session[:user_id] = @user.id #stored as a cookie in browser and encrypted 
      #The above line of code means the database ID will be saved in session user ID
      redirect_to root_path, notice: "Successfully created account" 
    else
      render :new #will render apps/views/registrations/new.html.erb
    end
  end




  private 
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation) #only attributes that are allowed in permit
  end
end