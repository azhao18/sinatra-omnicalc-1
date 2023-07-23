require "sinatra"
require "sinatra/reloader"


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
  @r = (@apr_perc/@num_period)
  @numer=(@r * @principal)
  @den = (1-((1+@r)**-@num_period))
  @the_results=(@numer/@den)
  erb(:payment_results)
end

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
