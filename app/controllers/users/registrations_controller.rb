# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params
  before_action :configure_account_update_params

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    attributes = [:username, :email, :encrypted_password, :password_confirmation]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    attributes = [:username, :email, :encrypted_password, :password_confirmation]
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end

end
