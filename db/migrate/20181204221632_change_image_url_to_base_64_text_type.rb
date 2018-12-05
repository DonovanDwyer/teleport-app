class ChangeImageUrlToBase64TextType < ActiveRecord::Migration[5.2]
  def up
     change_column :background_images, :image_url, :text
  end
  def down
    change_column :background_images, :image_url, :string
  end
end
