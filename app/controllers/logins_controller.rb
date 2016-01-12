class LoginsController < ApplicationController
  
  def new
    
  end
  
  def create 
    chef = Chef.find_by(email: params[:email])
    if chef && chef.authenticate(params[:password])
      flash[:success] = 'You have logged in'
      session[:chef_id] = chef.id
      redirect_to recipes_path
    else
      flash.now[:danger] = "Your email or password is incorrect"
      render 'new'
    end
  end
  
  def destroy
    session[:chef_id] = nil 
    flash[:success] = 'You have logged out'
    redirect_to root_path
  end
  
end