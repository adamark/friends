class AddParentIdToPages < ActiveRecord::Migration
  def change
    add_column :pages, :parent_id, :integer
    add_column :pages, :parent_branch, :string
  end
end
