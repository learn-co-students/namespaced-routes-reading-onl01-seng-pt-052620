Rails.application.routes.draw do
  namespace '/admin', module: 'admin' do
    resources :stats, only: [:index]
  end
end
