module Spree
  class HeroCarouselItem < ActiveRecord::Base
    self.table_name = 'hero_carousel_items'
    belongs_to :hero_carousel
    acts_as_list

    default_scope {order('position')}

    has_attached_file :large_image,
      styles: {large: '1140x485!'},
      convert_options: { all: '-colorspace sRGB -quality 70'}
    has_attached_file :small_image,
      styles: {small: '615x470!'},
      convert_options: { all: '-colorspace sRGB -quality 70'}

    validates_attachment_content_type :large_image, content_type: /\Aimage\/.*\Z/
    validates_attachment_content_type :small_image, content_type: /\Aimage\/.*\Z/
  end
end
