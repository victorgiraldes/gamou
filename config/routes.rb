Rails
  .application
  .routes
  .draw do
    scope '(:locale)', locale: /#{I18n.available_locales.join('|')}/ do
      root 'home#index'
      mount RailsAdmin::Engine => 'admin', :as => 'rails_admin'
      devise_for :users,
                 controllers: {
                   sessions: 'users/sessions',
                   registrations: 'users/registrations'
                 }

      get 'admin', to: 'admin/dashboard#index'
      get 'dashboard', to: 'dashboard#index'

      get 'product', to: 'product#index'
      get 'product/new', to: 'product#new'
      get 'product/edit', to: 'product#edit'
      put 'product/update', to: 'product#update'
      post 'product/create', to: 'product#create'
      delete 'product/destroy', to: 'product#destroy'
    end
  end
