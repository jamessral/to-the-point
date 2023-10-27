# frozen_string_literal: true

class SessionsController < ApplicationController
  def new
    redirect_to users_path if logged_in?
  end

  def create
    user = User.find_by(email: login_params.email)

    if user.authenticate(login_params.password)
      login user
      redirect_to root_path
    else
      flash.alert = 'Unable to login. Please check email or password'
      redirect_to new_session_path
    end
  end

  def destroy
    logout!
  end

  private

  def login_params
    params.require(:login).permit(:email, :password)
  end
end
