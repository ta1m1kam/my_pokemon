# frozen_string_literal: true

class TypePokemon < ApplicationRecord
  belongs_to :pokemon
  belongs_to :type
end
