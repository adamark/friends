class SubPage < ActiveRecord::Base
	extend FriendlyId
  attr_accessible :content, :title, :page_id, :publish, :images_attributes

  friendly_id :title, use: :slugged

  has_many :images, :as => :imageable
  accepts_nested_attributes_for :images, :allow_destroy => true
  belongs_to :page 
  has_many :galleries
end
