require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# Surrey (annual_revenue of 224000, carries women's apparel only)
# Whistler (annual_revenue of 1900000 carries men's apparel only)
# Yaletown (annual_revenue of 430000 carries men's and women's apparel)

  [
    {
      name: "Surrey",
      annual_revenue: 224_000,
      mens_apparel: false,
      womens_apparel: true,
      created_at: Time.now
    },
    {
      name: "Whistler",
      annual_revenue: 1_900_000,
      mens_apparel: true,
      womens_apparel: false,
      created_at: Time.now
    },
    {
      name: "Yaletown",
      annual_revenue: 430_000,
      mens_apparel: true,
      womens_apparel: true,
      created_at: Time.now
    }
  ].each do |new_store|
  Store.create!(new_store)
end

  @mens_stores = Store.where("mens_apparel = true")
  # puts @mens_stores
  @mens_stores.each do |store|
    puts "#{store.name} annual_revenue: #{store.annual_revenue}"
end

  @womens_stores_less_revenue = Store.where("womens_apparel = true AND annual_revenue > 1000000")
  # puts @womens_stores_less_revenue
  @womens_stores_less_revenue.each do |store|
    puts "#{store.name} annual_revenue: #{store.annual_revenue}"
end
