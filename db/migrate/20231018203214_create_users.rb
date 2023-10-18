# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email, null: true
      t.string :password_digest, null: true
      t.string :recovery_password

      t.timestamps
    end
  end
end
