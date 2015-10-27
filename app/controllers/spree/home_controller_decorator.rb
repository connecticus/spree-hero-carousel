Spree::HomeController.class_eval do
  def index
    @hero_carousel = Spree::HeroCarousel.where(:page_url => request.original_fullpath, :active => true).first

    # @hero_carousel_items = [
    #     {
    #         'images' => {'large' => 'images/slide_1.jpg', 'small' => 'images/slide_1-600.jpg'},
    #         'url' => '/first',
    #         'html' => '<p>Shop thousands of wall decor products online or design your own!</p>
    #               <button class="btn btn-success call-to-action-1">Custom Designed Wallpaper</button>
    #               <button class="btn btn-primary call-to-action-2">Shop 1000s of Patterns</button>'
    #     },
    #     {
    #         'images' => {'large' => 'images/submerged_slider.jpg', 'small' => 'images/submerged_slider_sm.jpg'},
    #         'url' => '/submerged',
    #         'html' => ''
    #     },
    #     {
    #         'images' => {'large' => 'images/fliepaper_slider.jpg', 'small' => 'images/fliepaper_slider_sm.jpg'},
    #         'url' => '/submerged',
    #         'html' => ''
    #     },
    #     {
    #         'images' => {'large' => 'images/glazed_slider.jpg', 'small' => 'images/glazed_slider_sm.jpg'},
    #         'url' => '/submerged',
    #         'html' => ''
    #     },
    # ]

  end
end
