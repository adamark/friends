class AddLinkColorToPage < ActiveRecord::Migration
  def change
    add_column :pages, :link_color, :string
    add_column :pages, :background_color, :string
  end
end
