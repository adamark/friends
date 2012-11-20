class Video < ActiveRecord::Base
  attr_accessible :page_id, :video
  belongs_to :page
end
