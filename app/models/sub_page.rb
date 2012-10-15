class SubPage < ActiveRecord::Base
	extend FriendlyId
  attr_accessible :content, :title, :page_id, :publish

  friendly_id :title, use: :slugged

  has_many :images, :as => :imageable
  belongs_to :page 
  has_many :galleries
end
