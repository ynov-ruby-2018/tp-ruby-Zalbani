class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # Peut-être vouliez vous parler de "authenticate_user!" ?
end
