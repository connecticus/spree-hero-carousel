module Spree
  module Admin
    class HeroCarouselsController < ResourceController

      private

        def permitted_resource_params
          params.require(:hero_carousel).
              permit(:id, :name, :page_url, :active
                    # ,
                    # hero_carousel_items_attributes: [:id, :hero_carousel_id, :link, :large_image, :small_image, :html, :active]
              )
        end

    end
  end
end
