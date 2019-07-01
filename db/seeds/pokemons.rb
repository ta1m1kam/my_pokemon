
seeds = JSON.parse(File.read(File.join(File.dirname(__FILE__ ), 'data', 'pokedex.json')))

seeds.each do |seed|
  p = Pokemon.find_or_initialize_by(name: seed['name']['english'])
  p.hp = seed['base']['HP']
  p.attack = seed['base']['Attack']
  p.defense = seed['base']['Defense']
  p.sp_attack = seed['base']['Sp. Attack']
  p.sp_defense = seed['base']['Sp. Defense']
  p.speed = seed['base']['Speed']
  p.save
end
