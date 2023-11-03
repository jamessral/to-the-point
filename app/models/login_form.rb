# frozen_string_literal: true

class LoginForm
  include ActiveModel::Model

  attr_accessor :email, :password, :user

  validates :email, presence: true, length: { minimum: 4, maximum: 64 }
  validates :password, presence: true, length: { minimum: 8, maximum: 64 }

  def attempt
    return false unless valid?

    @user = User.find_by(email: email)

    return user.authenticate(password)
  end
end
