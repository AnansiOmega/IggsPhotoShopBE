class CreateUserPhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :user_photos do |t|
      t.string :user_id
      t.string :photo_id
      t.timestamps
    end
  end
end
