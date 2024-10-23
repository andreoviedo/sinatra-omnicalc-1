require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:squared)
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

  @one_usr_input = params.fetch("number").to_f

  @one_result = @one_usr_input ** 2
  erb(:squared_result)
end


get("/square_root/results") do
  @two_usr_input = params.fetch("user_number").to_f

  @two_result = @two_usr_input ** 0.5
  erb(:square_root_result)
end

get("/random/results") do
  @three_min = params.fetch("user_min").to_i
  @three_max = params.fetch("user_max").to_i

  @three_result = random(@three_min, @three_max)
  erb(:random_result)
end


get("/payment/results") do
  
  @apr = params.fetch("user_apr").to_f
  @years = params.fetch("user_years").to_i
  @pv = params.fetch("user_pv").to_i


  @numerator = ((@apr/100)/12) * @pv

  @denominator = 1 - (1 + (@apr/100)/12) **(-@years*12)

  @four_result = @numerator/@denominator
  erb(:payment_result)
end
