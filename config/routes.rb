# frozen_string_literal: true

Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :pokemons, only: %i[index show]
      resources :types, only: %i[index]
    end
  end
end
