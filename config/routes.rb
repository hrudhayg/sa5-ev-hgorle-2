# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: redirect('teams')

  get 'teams', to: 'teams#index', as: 'teams'
  post 'teams', to: 'teams#create'
  get 'teams/new', to: 'teams#new', as: 'new_team'
  get 'teams/:id', to: 'teams#show', as: 'team'
  get 'teams/:id/edit', to: 'teams#edit', as: 'edit_team'
  patch 'teams/:id', to: 'teams#update'
  delete 'teams/:id', to: 'teams#destroy'

  get 'teams/:team_id/players', to: 'players#index', as: 'team_players'
  post 'teams/:team_id/players', to: 'players#create'
  get 'teams/:team_id/players/new', to: 'players#new', as: 'new_team_player'
  get 'teams/:team_id/players/:id/edit', to:'players#edit', as:'edit_team_player'
  get 'teams/:team_id/players/:id', to: 'players#show', as: 'team_player'
  patch 'teams/:team_id/players/:id', to: 'players#update'
  delete 'teams/:team_id/players/:id', to: 'players#destroy'
end
