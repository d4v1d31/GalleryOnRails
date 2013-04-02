class AdminController < ApplicationController

  before_filter :require_login, :only => :index
  def index

    @albums = Album.all

  end
end
