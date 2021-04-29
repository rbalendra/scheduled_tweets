class RegistrationsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: "Successfully created account"
    else
      render :new #will render apps/views/registrations/new.html.erb
    end
  end




  private 
  def user_params
    params.require(:user).permit(:email, :password_confirmation) #only attributes that are allowed in permit
  end
end