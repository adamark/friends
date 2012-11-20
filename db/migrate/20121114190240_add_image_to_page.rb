class AddImageToPage < ActiveRecord::Migration
  def change
    add_column :pages, :image_uid, :string
    add_column :pages, :image_name, :string
  end
end
