class AddPublishToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :publish, :boolean
  end
end
