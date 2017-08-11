class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def current_agent
    if current_investor
       current_investor
    elsif current_user
      current_user
    end
  end
helper_method :current_agent
end
