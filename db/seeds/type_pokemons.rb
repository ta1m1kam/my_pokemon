
seeds = JSON.parse(File.read(File.join(File.dirname(__FILE__ ), 'data', 'pokedex.json')))

if TypePokemon.first.blank?
  seeds.each do |seed|
    p = Pokemon.find_by(name: seed['name']['english'])
    seed['type'].each do |type|
      t = Type.find_by(name: type)
      TypePokemon.create(pokemon: p, type: t)
    end
  end
end
