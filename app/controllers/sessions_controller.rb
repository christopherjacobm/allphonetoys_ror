class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    @loginError = "";
    #check for a user with the same email id in the database
    if user && user.passwordMatches(params[:session][:password])
      log_in user
      redirect_to user
    else
      @loginError = 'Invalid email/password'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end