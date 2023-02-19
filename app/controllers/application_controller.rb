class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:top]
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  # ログアウト機能追加（自分で追加）
  def after_sign_out_path_for(resource)
    root_path 
  end

  def after_sign_in_path_for(resource)
    post_images_path
  end
  
  def after_sign_out_path_for(resource)
    about_path
  end
  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  
  def about
  end
end
