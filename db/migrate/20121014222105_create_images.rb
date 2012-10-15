class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_uid
      t.string :image_name
      t.string :caption
      t.references :imageable, :polymorphic => true

      t.timestamps
    end
  end
end
