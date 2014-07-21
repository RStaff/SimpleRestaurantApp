class Restaurant < ActiveRecord::Base
  belongs_to :restaurant
  mount_uploader :image, ImageUploader
  mount_uploader :menu, MenuUploader
end

