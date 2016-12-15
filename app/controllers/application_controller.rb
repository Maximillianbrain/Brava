class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: [:username, :age, :weight, :city, :state, :country]
    devise_parameter_sanitizer.permit :account_update, keys: [:username, :age, :weight, :city, :state, :country]
  end
end
