class PhotosController < ApplicationController
  def index
    @photos = Photo.all
    render :index
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.delete
    redirect_to photos_path
  end

  def show
    @photo = Photo.find(params[:id])
  end
end
