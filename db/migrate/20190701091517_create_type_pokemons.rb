class CreateTypePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :type_pokemons do |t|
      t.references :pokemon, index: true, foreign_key: true
      t.references :type, index: true, foreign_key: true

      t.timestamps
    end
  end
end
