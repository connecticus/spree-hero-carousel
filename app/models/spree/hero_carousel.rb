module Spree
  class HeroCarousel < ActiveRecord::Base
    self.table_name = 'hero_carousels'
    has_many :hero_carousel_items, -> { where active: true }
  end
end
