class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.integer :page_id
      t.text :video

      t.timestamps
    end
  end
end
