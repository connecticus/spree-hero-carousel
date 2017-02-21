Deface::Override.new(
    original: '4375c93c0c5ea4bcd35f3fd2c6527a563f93d529',
    virtual_path: 'spree/layouts/admin',
    name: 'add_hero_carousels_to_admin_menu',
    insert_bottom: '[data-hook="admin_tabs"]',
    text: '<ul class="nav nav-sidebar">
        <%= tab Spree.t(:hero_carousels), url: admin_hero_carousels_path, icon: \'forward\' %>
      </ul>'
)
