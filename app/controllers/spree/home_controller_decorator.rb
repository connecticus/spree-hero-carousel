Spree::HomeController.class_eval do
  before_action :load_hero_carousel, only: :index

  private

    def load_hero_carousel
      @hero_carousel = Spree::HeroCarousel.where(:page_url => request.original_fullpath, :active => true).first
    end
end
