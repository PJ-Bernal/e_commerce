# if Rails.env.development?
#   AdminUser.create!(email: "admin@example.com", password: "password",
#                     password_confirmation: "password")
# end
# db/seeds.rb

require "httparty"
# Define the API endpoint
api_endpoint = "https://api.openbrewerydb.org/breweries"

# Fetch the data from the API
response = HTTParty.get(api_endpoint)

# Check if the request was successful
if response.success?
  breweries = response.parsed_response

  # Limit to 30 breweries
  breweries.first(30).each do |brewery|
    random_cost = rand(8.0..20.0).round(2)
    random_stock = rand(5..50)
    # Create a Brewery record for each item
    Product.create!(
      product_name: brewery["name"], product_description: brewery["brewery_type"],
      category_id: 6, product_price: random_cost, product_stock: random_stock
    )
  end
else
  logger.fatal "Error fetching data from the API"
end
