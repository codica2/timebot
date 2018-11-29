# frozen_string_literal: true

require 'bcrypt'

class Admin < ApplicationRecord
  include BCrypt

  validates :email, presence: true

  def password
    @password ||= Password.new(encrypted_password)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.encrypted_password = @password
  end

  def valid_password?(password_to_check)
    password == password_to_check
  end
end
