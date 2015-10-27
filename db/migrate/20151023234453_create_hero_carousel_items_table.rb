class CreateHeroCarouselItemsTable < ActiveRecord::Migration
  def change
    create_table :hero_carousel_items do |t|
      t.integer :hero_carousel_id
      t.string :link
      t.text :html
      t.integer :position, :default => 0
      t.boolean :active, :default => true
      t.timestamps null: false
    end
    add_foreign_key :hero_carousel_items, :hero_carousels
    add_index :hero_carousel_items, :position
  end
end
