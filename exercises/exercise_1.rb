require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
# Burnaby (annual_revenue of 300000, carries men's and women's apparel)
# Richmond (annual_revenue of 1260000 carries women's apparel only)
# Gastown (annual_revenue of 190000 carries men's apparel only)

class Store < ActiveRecord::Base
  Store.create(
    [
      {
        name: "Burnaby",
        annual_revenue: 300_000,
        mens_apparel: true,
        womens_apparel: true,
        created_at: Time.now
      },
      {
        name: "Richmond",
        annual_revenue: 1_260_000,
        mens_apparel: false,
        womens_apparel: true,
        created_at: Time.now
      },
      {
        name: "Gastown",
        annual_revenue: 190_000,
        mens_apparel: true,
        womens_apparel: false,
        created_at: Time.now
      }
    ]
  )
  puts Store.count
end
