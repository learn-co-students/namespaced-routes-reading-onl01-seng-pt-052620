Rails.application.routes.draw do
  resources :authors, only: %i[show index] do
    resources :posts, only: %i[show index new edit]
  end

  resources :posts, only: %i[index show new create edit update]

  namespace :admin  do
    resources :stats, only: [:index]
  end
  #telling scope that we want to use /admin as a URL prefix, and we're also letting Rails know that all of the included routes will be handled by controllers in the admin module.  route with a module and use that module's name as the URL prefix, we can use the namespace method instead of scope, module. namespace method makes the assumption that the path prefix and module name match,URL helpers. Remember above that using scope gave us a stats_path helper. 
  root 'posts#index'

end
