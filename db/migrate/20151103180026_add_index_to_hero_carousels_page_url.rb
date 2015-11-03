class AddIndexToHeroCarouselsPageUrl < ActiveRecord::Migration
  def change
    add_index :hero_carousels, :page_url
  end
end
