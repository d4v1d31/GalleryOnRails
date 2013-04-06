class UsersController < ApplicationController

  before_filter :checkadmin
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render :new
    end
  end

  def index
    @user = User.all
  end

  def checkadmin
    unless current_user.admin?
      redirect_to root_path
    end
  end
end
