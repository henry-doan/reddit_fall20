Rails.application.routes.draw do
  # resources 
  # get '/newform', to: 'ppl#new'
  root 'subs#index'

  # get '/subs/new', to: 'subs#new'
  # get '/subs', to: 'subs#index'
  #             3
  # get '/subs/:id', to: 'subs#show'
  # post '/subs', to: 'subs#create'
  # do not do this below
  # resources :subs do
  #   resources :topics do
  #     resources :comments
  #   end
  # end

  # best practice
  resources :subs do
    resources :topics
  end

  resources :topics do
    resources :comments
  end

  # custom routes
  # http verb '/url you want it to go', to: 'controller#action'

end
