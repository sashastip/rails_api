class AddImageToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :images, :json
  end
end
