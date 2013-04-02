class PicturesController < ApplicationController

  before_filter :require_login, :only => [:new, :edit, :destroy, :create, :update]
  before_filter :get_album

  def get_album
    @album = Album.find(params[:album_id])
  end

  # GET /pictures
  # GET /pictures.json
  def index
    @pictures = @album.pictures

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pictures }
    end
  end

  # GET /pictures/1
  # GET /pictures/1.json
  def show
    @picture = Picture.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @picture }
    end
  end

  # GET /pictures/new
  # GET /pictures/new.json
  def new
    @picture = Picture.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @picture }
    end
  end

  # GET /pictures/1/edit
  def edit
    @picture = Picture.find(params[:id])
    respond_to do |format|
      format.html # edit.html.haml
      format.js # edit.js
    end
  end

  # POST /pictures
  # POST /pictures.json
  def create
    @picture = @album.pictures.new(params[:picture])

    respond_to do |format|
      if @picture.save
        format.html { redirect_to edit_album_path(@album), notice: 'Picture was successfully created.' }
        format.json { render json: @picture, status: :created, location: @picture }
      else
        format.html { render action: "new" }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pictures/1
  # PUT /pictures/1.json
  def update
    @picture = Picture.find(params[:id])

    respond_to do |format|
      if @picture.update_attributes(params[:picture])
        format.html { redirect_to edit_album_path(@album), notice: 'Picture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pictures/1
  # DELETE /pictures/1.json
  def destroy
    @picture = Picture.find(params[:id])
    @album = @picture.album
    @picture.destroy

    respond_to do |format|
      format.html { redirect_to edit_album_path(@album), notice: 'Bild wurde geloescht.' }
      format.json { head :no_content }
    end
  end
end
