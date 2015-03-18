class CreateGlances < ActiveRecord::Migration
  def change
    create_table :glances do |t|
      t.string :image_address
      t.text :description
      t.integer :position
      t.integer :video_id
      t.timestamps
    end
  end
end
