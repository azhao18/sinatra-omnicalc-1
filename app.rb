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

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
