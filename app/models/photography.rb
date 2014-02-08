class Photography < ActiveRecord::Base
  attr_accessible :photo_image
  mount_uploader :photo_image, PhotographyImageUploader
end
