class PhotosController < ApplicationController

    def index
        photos = Photo.all
        render json: photos
    end


    def download
        photo = Photo.find(params[:id])
        send_file "db/photos/#{photo.title}.jpg", :type => "image/jpeg", :disposition => "attachment"
    end


    def like
        photo = Photo.find(params[:id])
        photo.update(likes: params[:like])
        render json: photo
    end
end