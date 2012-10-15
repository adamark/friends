class Gallery < ActiveRecord::Base
	extend FriendlyId
  attr_accessible :content, :page_id, :sub_page_id, :title, :publish
	
  friendly_id :title, use: :slugged

  has_many :images, :as => :imageable
  belongs_to :page 
  belongs_to :sub_page 
end
