Deface::Override.new(
    :original => 'b511780df47e0ebcdfe1aeb87c0143df8d2f4985',
    :virtual_path => 'spree/layouts/admin',
    :name => 'add_hero_carousels_to_admin_menu',
    :insert_bottom => '[data-hook="admin_tabs"]',
    :text => '<ul class="nav nav-sidebar">
        <%= tab Spree.t(:hero_carousels), :url => admin_hero_carousels_path, :icon => \'forward\' %>
      </ul>'
)
