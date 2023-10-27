# frozen_string_literal: true

class CreateUserForm
  include ActiveModel::Model

  attr_accessor :email, :password, :password_confirmation, :user

  validates :email, presence: true, length: { minimum: 4, maximum: 64 }
  validates :password, presence: true, length: { minimum: 8, maximum: 64 }
  validates :password_confirmation, presence: true, length: { minimum: 8, maximum: 64 }

  validate :passwords_match

  def passwords_match
    errors.add :passwords_match, 'Password and Confirmation must match' if password != password_confirmation
  end

  def save
    @user = User.create(email: email, password: password)
    @user.save
  end

  delegate :id, to: :user
end
