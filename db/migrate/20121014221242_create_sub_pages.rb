class CreateSubPages < ActiveRecord::Migration
  def change
    create_table :sub_pages do |t|
      t.string :title
      t.text :content
      t.integer :page_id

      t.timestamps
    end
  end
end
