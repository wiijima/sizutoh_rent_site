class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include SessionsHelper
  
  private
  
  # これはまだ未完成。「管理者でログインしていなければ」の意味に変更し、users_controllerも変更する
  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
end


