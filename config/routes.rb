Rails.application.routes.draw do
  get '/new' => 'notes#new'

  root 'home#top'
  get '/about' => 'home#about'
end
