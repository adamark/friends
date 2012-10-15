class AddSlugToSubPage < ActiveRecord::Migration
  def change
    add_column :sub_pages, :slug, :string
    add_index :sub_pages, :slug, unique: true
  end
end
