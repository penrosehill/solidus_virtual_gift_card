Deface::Override.new(
  virtual_path: 'spree/admin/users/_tabs',
  name: 'admin_user_tab_redeem_gift_card',
  insert_bottom: '[data-hook="admin_user_tab_options"]',
  partial: 'spree/admin/users/gift_card_tab'
)
