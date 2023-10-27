# frozen_string_literal: true

require 'test_helper'

class CreateUserFormTest < ActiveSupport::TestCase
  test 'requires email' do
    user_form = CreateUserForm.new(password: 'password', password_confirmation: 'password')

    assert_not user_form.valid?

    user_form.email = 'email@test.com'

    assert user_form.valid?
  end

  test 'requires password' do
    user_form = CreateUserForm.new(email: 'email@test.com', password_confirmation: 'password')

    assert_not user_form.valid?

    user_form.password = 'password'

    assert user_form.valid?
  end

  test 'requires password_confirmation' do
    user_form = CreateUserForm.new(email: 'email@test.com', password: 'password')

    assert_not user_form.valid?

    user_form.password_confirmation = 'password'

    assert user_form.valid?
  end

  test 'password and password_confirmation must match' do
    user_form  = CreateUserForm.new(email: 'email@email.com', password: 'password', password_confirmation: 'different')

    assert_not user_form.valid?

    user_form.password_confirmation = user_form.password

    assert user_form.valid?
  end
end
