class AddAttachmentToPhotoPost < ActiveRecord::Migration
  def self.up
    add_attachment :photo_posts, :image
  end

  def self.down
    remove_attachment :photo_posts, :image
  end
end
