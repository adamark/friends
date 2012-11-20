class AddFriendlyTitleToPage < ActiveRecord::Migration
  def change
    add_column :pages, :friendly_title, :string
  end
end
