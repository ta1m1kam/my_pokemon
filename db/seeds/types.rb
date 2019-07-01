# frozen_string_literal: true

seeds = JSON.parse(File.read(File.join(File.dirname(__FILE__), 'data', 'types.json')))

seeds.each do |seed|
  t = Type.find_or_initialize_by(name: seed['english'])
  t.save
end
