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
    click_button 'New user'

    fill_in 'Email', with: @user.email
    fill_in 'Password digest', with: @user.password_digest
    fill_in 'Recovery password', with: @user.recovery_password
    click_button 'Create User'

    assert_text 'User was successfully created'
    click_button 'Back'
  end

  test 'should update User' do
    visit user_url(@user)
    click_button 'Edit this user', match: :first

    fill_in 'Email', with: @user.email
    fill_in 'Password digest', with: @user.password_digest
    fill_in 'Recovery password', with: @user.recovery_password
    click_button 'Update User'

    assert_text 'User was successfully updated'
    click_button 'Back'
  end

  test 'should destroy User' do
    visit user_url(@user)
    click_button 'Destroy this user', match: :first

    assert_text 'User was successfully destroyed'
  end
end
