module Spree
  module Admin
    class HeroCarouselItemsController < ResourceController

      before_action :load_hero_carousel, except: [:create, :update]

      def location_after_save
        load_hero_carousel
        spree.admin_hero_carousel_hero_carousel_items_url(@hero_carousel)
      end

      private

      def permitted_resource_params
        params.require(:hero_carousel_item).
            permit(:id, :hero_carousel_id, :link, :large_image, :small_image, :html, :active, :position)
      end

      def load_hero_carousel
        @hero_carousel = Spree::HeroCarousel.find(params[:hero_carousel_id])
      end

    end
  end
end
