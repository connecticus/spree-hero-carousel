module Spree
  module Admin
    class HeroCarouselsController < ResourceController

      private

        def permitted_resource_params
          params.require(:hero_carousel).permit(:id, :name, :page_url, :active)
        end

    end
  end
end
