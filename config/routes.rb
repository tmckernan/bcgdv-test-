Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    resources :uploads, only: %i[create]
    resources :downloads, only: %i[show]
  end
end
