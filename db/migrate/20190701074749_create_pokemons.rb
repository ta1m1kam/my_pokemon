# frozen_string_literal: true

class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name, null: false
      t.integer :hp, null: false, default: 0
      t.integer :attack, null: false, default: 0
      t.integer :defense, null: false, default: 0
      t.integer :sp_attack, null: false, default: 0
      t.integer :sp_defense, null: false, default: 0
      t.integer :speed, null: false, default: 0

      t.timestamps
    end
  end
end
