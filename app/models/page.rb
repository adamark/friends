class Page < ActiveRecord::Base
	extend FriendlyId
  Linguistics.use(:en)
  
  attr_accessible :content, :title, :publish, :parent_id, :parent_branch, :images_attributes, :link_color, :background_color,
                  :image_name, :image_uid, :image, :friendly_title, :videos_attributes
  
  before_create :title_to_friendly_title
  before_create :default_name
  after_create :setup_slugs

  scope :published, where(publish: true)

  image_accessor :image
	friendly_id :friendly_title, use: :slugged
  
  has_many :children, class_name: "Page", foreign_key: "parent_id"
  belongs_to :parent, class_name: "Page"
  has_many :videos
  accepts_nested_attributes_for :videos, :allow_destroy => true


  has_many :images, :as => :imageable
  accepts_nested_attributes_for :images, :allow_destroy => true
 
  validates :title, presence: true
  private
  
  def title_to_friendly_title
    self.friendly_title = (self.title.en.numwords == "") ? self.title : self.title.en.numwords
  end

  def default_name
    self.image_name ||= File.basename(image.filename, '.*').titleize if image
  end

  def setup_slugs
    self.slug = self.friendly_title
    self.save
  end

end
