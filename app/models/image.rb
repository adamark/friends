class Image < ActiveRecord::Base
  attr_accessible :caption, :image_name, :image_uid

  belongs_to :imageable, :polymorphic => true
end
