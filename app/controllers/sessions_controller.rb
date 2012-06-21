class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    
    user = User.find_by_email(params[:session][:email])
    
    if user && user.authenticate(params[:session][:password])
      # Sign in the user and redirect to the user's show page'
      sign_in user
      redirect_back_or user
    else
      # Create an error message and re-rener the signin form
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
        
  end
  
  def destory
    sign_out
    redirect_to root_path
  end
  
end
