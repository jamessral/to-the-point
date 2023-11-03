# frozen_string_literal: true

class SessionsController < ApplicationController
  def new
    @login_form = LoginForm.new()

    redirect_to root_path if logged_in?
  end

  def create
    login_form = LoginForm.new(login_params)

    if login_form.attempt
      login login_form.user
      redirect_to root_path
    else
      flash.alert = 'Unable to login. Please check email or password'
      redirect_to new_session_path
    end
  end

  def destroy
    logout!
    redirect_to new_session_path
  end

  private

  def login_params
    params.require(:login_form).permit(:email, :password)
  end
end
