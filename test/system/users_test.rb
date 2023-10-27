# frozen_string_literal: true

require 'application_system_test_case'

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test 'visiting the index' do
    visit users_url
    assert_selector 'h1', text: 'Users'
  end

  test 'should create user' do
    visit users_url
    click_link 'New user'

    fill_in 'Email', with: @user.email
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Sign up'

    assert_text 'User was successfully created'
    click_link 'Back'
  end

  test 'should update User' do
    visit user_url(@user)
    click_link 'Edit this user', match: :first

    fill_in 'Email', with: @user.email
    click_button 'Update User'

    assert_text 'User was successfully updated'
    click_link 'Back'
  end

  test 'should destroy User' do
    visit user_url(@user)
    click_button 'Destroy this user', match: :first

    assert_text 'User was successfully destroyed'
  end
end
