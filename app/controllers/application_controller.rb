class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
   before_filter :configure_permitted_parameters, if: :devise_controller?
   
   around_filter :user_time_zone, if: :current_user

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| 
      u.permit(:email, :password, :password_confirmation, :time_zone) 
   }
    devise_parameter_sanitizer.for(:account_update) { |u| 
      u.permit(:email, :password, :password_confirmation, :current_password, :time_zone) 
   }
  end
  
  private

  def user_time_zone(&block)
    Time.use_zone(current_user.time_zone, &block)
  end

end
