class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :lcbo_id
      t.string :image_url
      t.string :image_thumb_url
      t.string :name
      t.string :category
      t.string :region
      t.string :price
      t.integer :rating
      t.string :description
      t.string :byline
      t.string :byline_link

      t.timestamps
    end
  end
end
