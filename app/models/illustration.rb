class Illustration < ActiveRecord::Base
  attr_accessible :illustration_image
  mount_uploader :illustration_image, IllustrationImageUploader
end
