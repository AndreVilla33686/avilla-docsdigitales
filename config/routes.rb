Rails.application.routes.draw do
  resources :usuarios
  resources :administradors
  resources :empleados
  resources :sucursals
  resources :admins
  resources :slashes
  get 'sys/iniciosesion'
  get 'sys/admon'
  get 'sys/edempleado'
  get 'sys/edsucursal'
  get 'sys/regempleado'
  get 'sys/registro'
  get 'sys/regsucursal'
  root :to => 'usuarios#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
