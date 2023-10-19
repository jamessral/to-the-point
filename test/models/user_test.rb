# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'requires email' do
    user = User.new
    assert_not user.valid?

    user.password_digest = "it's here"

    assert_not user.valid?

    user.email = 'email@emai.com'

    assert user.valid?
  end

  test 'requires password' do
    user = User.new(email: 'test@email.com')
    assert_not user.valid?
  end
end
