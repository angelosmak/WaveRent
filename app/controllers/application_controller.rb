class ApplicationController < ActionController::Base
  before_action :authenticate_user!
<<<<<<< HEAD
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:photo])
  end
=======
  include Pagy::Backend
>>>>>>> master
end
