class Page < ActiveRecord::Base
	extend FriendlyId
  attr_accessible :content, :title, :publish

	friendly_id :title, use: :slugged
  
  has_many :images, :as => :imageable
  has_many :sub_pages
end
