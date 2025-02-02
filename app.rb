require "sinatra"
require "sinatra/reloader"
require "active_support/all"


get("/square/new") do 
  erb(:new_square_calc)
end

get("/square/results") do
  erb(:square_results)
end

get("/square_root/new") do 
  erb(:new_squareroot_calc)
end

get("/square_root/results") do
  erb(:squareroot_results)
end

get("/payment/new") do
  erb(:payment_calc)
end

get("/payment/results") do

  @apr= params.fetch("users_number1").to_f
  @num_year= params.fetch("users_number2").to_i
  @principal= params.fetch("users_number3").to_f
  @num_period = @num_year*12
  @apr_perc=@apr/100
  @r = @apr_perc/12
  @the_results= (@r * @principal) / (1-((1+@r)** (-@num_period)))
  erb(:payment_results)
end

get("/random/new") do
  erb(:random_new)
end

get("/random/results") do
  @minimum = params.fetch("users_number1").to_f
  @maximum = params.fetch("users_number2").to_f
  @rand_num = rand(@minimum..@maximum)
  erb(:random_results)
end

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
