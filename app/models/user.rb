# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, length: { minimum: 6, maximum: 64 }
end
