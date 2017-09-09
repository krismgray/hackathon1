class AddingImages < ActiveRecord::Migration[5.1]
  def change
    add_attachment :bios, :avatar
    add_attachment :posts, :image
  end
end
