#rake db:drop && rake db:create && rake db:migrate && rake db:seed

# This will delete any existing rows from the Restaurant and Customer tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting Restaurant/Customer data..."
Restaurant.destroy_all
Customer.destroy_all
Review.destroy_all

puts "Creating restaurants..."
restaurant = Restaurant.create(
    name: "The Poke Cafe"
)

puts "Creating customers..."
#run this loop 12 times
12.times do
customer = Customer.create(
    name: Faker::Customer.name)
end

puts "Creating reviews..."
#create between 1-12 reviews for each meal
rand(1..12).times do
review = Review.create(
    score: rand(1..5),
    meal_id: meal.id,
    testimonial: ["Best food in #{Faker::Games::Pokemon.location}", "My #{Faker::Games::Pokemon.name} really liked this dish.", "The Poke'chef prepared our meal special by using #{Faker::Games::Pokemon.move} on it.", "I flew all the way from #{Faker::Games::Pokemon.location} to try this.", "My #{Faker::Games::Pokemon.name} is a vegan and was giving me weird looks for the whole meal.", "I traded in my #{Faker::Games::Pokemon.name} to get a free meal!"].sample
)
end

puts "Seeding done!"

puts Customer.first.full_name
puts Customer.first.favorite_restaurant
puts Restaurant.first.fanciest
puts Restaurant.first.all_reviews
puts Review.first.full_review
puts Customer.first.reviews
puts Customer.first.delete_reviews(Restaurant.first)
