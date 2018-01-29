class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :client_id, :client_secret, :current_user

  private
  def client_id
    "bf0066003db62eb3ff97"
  end

  def client_secret
    "bba71859350759b3236715882ff88c45953f3ad2"
  end

  def current_user
    @current_user ||= User.find(session[:user_id])
  end
end
