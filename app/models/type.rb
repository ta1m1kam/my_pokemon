# frozen_string_literal: true

class Type < ApplicationRecord
  has_many :type_pokemons
  has_many :pokemons, through: :type_pokemons
end
