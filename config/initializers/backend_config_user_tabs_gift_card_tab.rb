Spree::Backend::Config.configure do |config|
  config.menu_items.pop
  config.menu_items << config.class::MenuItem.new(
    Spree::BackendConfiguration::USER_TABS,
    'user',
    partial: 'spree/admin/shared/user_sub_menu.html.erb',
    condition: -> { Spree.user_class && can?(:admin, Spree.user_class) },
    url: :admin_users_path
  )
end
