class Upload < ActiveRecord::Base
  has_attached_file :image

  validates_attachment :image, 
                        presence: true,
                        content_type: { content_type: /\Aimage\/.*\Z/ },
                        size: { less_than: 1.megabyte }
end
