require("sinatra")
require("sinatra/reloader")
require("sinatra/activerecord")
require("./lib/product")
require("./lib/purchase")
require("pg")
also_reload("lib/**/*.rb")

get('/') do
  erb(:index)
end

get('/purchases/') do
  @products = Product.all().in_stock()
  @items_array = []
  erb(:purchases)
end

# get('/purchases/:id') do
# #create purchases here.
# purchase_id
# fetch product 1
# fetching product 2
# [product 1, product 2]
#  each() do
#   new_purchase = Purchase.create(product, cost, :purchase_id => purchase_id)
# end
#need post (create new purchase)
#need patch (update product)

get('/products/') do
  @products = Product.all().in_stock()
  erb(:products)
end

post('/add_product') do
  description = params.fetch("description")
  cost = params.fetch("cost")
  new_product = Product.create({:description => description, :cost => cost, :in_stock => true})
  redirect to('/products/')
end

patch('/purchase/new') do
  @product_ids = params.fetch("product_ids")
  total_cost = 0
  @product_ids.each() do |product|
    found_product = Product.find(product)
    found_product.update({:in_stock => false})
    new_variable = Product.find(product.to_i()).cost()
    total_cost += new_variable
  end
  @total_cost = total_cost
  new_purchase = Purchase.create({:items_sold => @product_ids})
  erb(:receipt)
end

get('/report/') do
  erb(:report_form)
end

post('/report/') do
  start_date = params.fetch("start_date")
  end_date = params.fetch("end_date")
  @results = Purchase.created_between(start_date, end_date)
  @results.each do |result|
    erb(:report)
  end
end



#  @results = Purchase.where("created_at >= :#{start_date} AND created_at <= :#{end_date}")
#   erb(:report)
# end




get('/receipt') do
  @product = Product.find(product_id)
  erb(:receipt)
end
