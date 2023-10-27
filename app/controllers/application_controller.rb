# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :login, :logged_in?, :logout

  def login(user)
    return unless user

    session[:user_id] = user.id
  end

  def logged_in?
    !!session[:user_id]
  end

  def logout!
    session[:user_id] = nil
  end
end
