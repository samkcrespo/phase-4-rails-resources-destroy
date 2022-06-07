Rails.application.routes.draw do
  ### Since we are now using all 5 RESTful routes, we can omit the only option!
  # resources :birds, only: [:index, :show, :create, :update, :destroy]
  resources :birds
  patch "/birds/:id/like", to: "birds#increment_likes"
end
