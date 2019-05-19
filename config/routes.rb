# frozen_string_literal: true

Rails.application.routes.draw do
  root 'application#landing'
  resource :launch, only: :create
  get '/config' => 'launches#xml_config'
  get '/landing', to: 'application#landing', as: 'landing'

  resources :users, only: %i[]
  resources :submissions, only: %i[]
  resources :contexts, only: %i[]
  resources :resources, only: %i[]
  resources :enrollments, only: %i[]
  resources :consumptions, only: %i[]
  resources :tool_consumers, only: %i[]
  resources :credentials, only: %i[]
  devise_for :administrators
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
