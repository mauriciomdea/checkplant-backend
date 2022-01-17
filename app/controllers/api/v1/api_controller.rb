class Api::V1::ApiController < ApplicationController
  # Turns off Rails CSRF protection for API requests
  protect_from_forgery with: :null_session
  
end
