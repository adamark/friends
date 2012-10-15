class AddPublishToPage < ActiveRecord::Migration
  def change
    add_column :pages, :publish, :boolean
  end
end
