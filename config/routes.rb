QUnit::Rails::Engine.routes.draw do
  root to: "test#index"
end

Rails.application.routes.draw do
  unless Rails.application.routes.named_routes.key?(:q_unit_rails)
    mount QUnit::Rails::Engine => "/qunit"
  end
end
