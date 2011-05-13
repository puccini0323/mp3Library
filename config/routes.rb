Musica::Application.routes.draw do

  resources :mp3s

  resources :mp3s do
    resources :ratings
  end

  resources :playlist

  root :to => "home#index"
  put "/playlist" => "playlist#create"


end
