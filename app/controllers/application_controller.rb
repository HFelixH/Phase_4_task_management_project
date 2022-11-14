class ApplicationController < ActionController::Base
  def after_sign_in_path_for(_user)
    '/projects#index/'
  end
end
