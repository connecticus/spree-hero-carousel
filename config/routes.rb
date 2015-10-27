Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :hero_carousels do
      resources :hero_carousel_items do
        collection do
          post :update_positions
        end
      end
    end
  end
end
