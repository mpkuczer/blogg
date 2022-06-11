# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params

  protected

  def configure_sign_in_params
    attributes = [:username, :email, :encrypted_password, :password_confirmation]
    devise_parameter_sanitizer.permit(:sign_in, keys: attributes)
  end
end
