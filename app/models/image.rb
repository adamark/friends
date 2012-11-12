class Image < ActiveRecord::Base
  attr_accessible :caption, :image_name, :image_uid, :link_image, :image, :imageable_id, :imageable_type
  image_accessor :image
  before_create :default_name

  belongs_to :imageable, :polymorphic => true

  def default_name
  	self.image_name ||= File.basename(image.filename, '.*').titleize if image
  end
end
