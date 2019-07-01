puts 'start seed'

File.join(File.dirname(__FILE__), 'seeds').tap do |dir|
  require File.join(dir, 'pokemons.rb')
  require File.join(dir, 'types.rb')
end
