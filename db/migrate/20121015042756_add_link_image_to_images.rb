class AddLinkImageToImages < ActiveRecord::Migration
  def change
    add_column :images, :link_image, :boolean
  end
end
