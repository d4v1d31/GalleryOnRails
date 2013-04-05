class SessionsController < ApplicationController
  def create
    user = login(params[:email], params[:password], params[:remember_me])

    respond_to do |format|
      if user
        format.html { redirect_back_or_to root_url, :notice => "Logged in!"}
        format.js
      else
        format.html { render action: "new"}
        format.js {render action: "new", :notice => "Login failed!"}
      end
    end
  end

  def destroy
    logout
    redirect_to root_url, :notice => "Logged out!"
  end
end
