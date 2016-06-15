class AddImageToUpload < ActiveRecord::Migration
  def up
    add_attachment :uploads, :image 
  end

  def down 
    remove_attachment :uploads, :image 
  end
end
