AATOTest::Application.routes.draw do
  resources :churches

  root to: 'churches#index'
end
