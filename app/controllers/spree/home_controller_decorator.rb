Spree::HomeController.class_eval do
  def index
    @hero_carousel = Spree::HeroCarousel.where(:page_url => request.original_fullpath, :active => true).first
  end
end
