# frozen_string_literal: true

require 'application_system_test_case'

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test 'logging in' do
    visit new_session_path

    fill_in 'email', with: @user.email
    fill_in 'password', with: @user.password
    click_button 'Login'

    assert_text 'Logout'
  end

  test 'logging out' do
    visit root_path

    assert_text 'Logout'
    click_button 'Logout'

    assert_text 'Login'
  end
end
