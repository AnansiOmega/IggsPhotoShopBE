class AddColorToPhotos < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :color, :string
  end
end
