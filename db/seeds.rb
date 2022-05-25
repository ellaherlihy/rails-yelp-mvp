require 'faker'

Restaurant.destroy_all

10.times do
  Restaurant.create(name: Faker::Mountain.name, address: Faker::Mountain.range, category: %w[chinese italian japanese french belgian].sample)
end

puts Restaurant.all.length
