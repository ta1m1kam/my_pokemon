class Pokemon < ApplicationRecord
  has_many :type_pokemons
  has_many :types, through: :type_pokemons
  accepts_nested_attributes_for :type_pokemons, allow_destroy: true
end
