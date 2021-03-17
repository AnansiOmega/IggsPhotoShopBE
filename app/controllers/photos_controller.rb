class PhotosController < ApplicationController

    def index
        if params[:page] == '1'
        photos1 = Photo.all[0...10]
        render json: photos1
        end
        if params[:page] == '2'
        photos2 = Photo.all[11...20]
        render json: photos2
        end
        if params[:page] == '3'
        photos3 = Photo.all[21...30]
        render json: photos3
        end
        if params[:page] == '4'
        photos4 = Photo.all[31...41]
        render json: photos4
        end
    end


    def download
        photo = Photo.find(params[:id]) ## Photo.title is "A New World"
    ##             V         "db/photos/A_New_World.jpg"          V
        send_file "db/photos/#{photo.title.split(' ').join('_')}.jpg", :type => "image/jpeg", :disposition => "attachment"
    end


    def like
        photo = Photo.find(params[:id])
        photo.update(likes: params[:like])
        render json: photo
    end
# V this was used to programmitcally update each photos backdrop color
    def update
        photo = Photo.find(params[:id])
        photo.update!(color: params[:color])
        render json: photo
    end
end