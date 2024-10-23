require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end



get("/square/new") do
  erb(:squared)
end


get("/square_root/new") do
  erb(:square_root)
end

get("/random/new") do
  erb(:random)
end


get("/payment/new") do

  erb(:payment)
end



get("/square/results") do
  erb(:squared)
end


get("/square_root/rersults") do
  erb(:square_root)
end

get("/random/results") do
  erb(:random)
end


get("/payment/results") do

  erb(:payment)
end
