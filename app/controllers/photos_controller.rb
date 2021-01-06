class PhotosController < ApplicationController

    def index
        photos = Photo.all
        render json: photos
    end


    def download
        photo = Photo.find(params[:id])
        send_file "db/photos/#{photo.title.split(' ').join('_')}.jpg", :type => "image/jpeg", :disposition => "attachment"
    end


    def like
        photo = Photo.find(params[:id])
        photo.update(likes: params[:like])
        render json: photo
    end

    def update
        photo = Photo.find(params[:id])
        photo.update(color: params[:color])
        photo.save
        render json: photo
    end
end