class AddAttachmentColumnsToHeroCarouselItems < ActiveRecord::Migration
  def self.up
    change_table :hero_carousel_items do |t|
      t.attachment :large_image
      t.attachment :small_image
    end
  end

  def self.down
    remove_attachment :hero_carousel_items, :large_image
    remove_attachment :hero_carousel_items, :small_image
  end
end
