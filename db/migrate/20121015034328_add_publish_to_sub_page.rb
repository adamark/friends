class AddPublishToSubPage < ActiveRecord::Migration
  def change
    add_column :sub_pages, :publish, :boolean
  end
end
