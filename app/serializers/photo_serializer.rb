class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :title, :price, :category, :image, :likes



  include Rails.application.routes.url_helpers
  
  def image
      rails_blob_path(object.image, only_path: true) if object.image.attached?
  end

end
