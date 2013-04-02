class ApplicationController < ActionController::Base

  def not_authenticated
    redirect_to login_url, :alert => "First login to access this page."
  end

  protect_from_forgery
end
