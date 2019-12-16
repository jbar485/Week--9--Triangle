require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:homepage)
end

post("/answer") do
  side1 = params[:side1].to_i
  side2 = params[:side2].to_i
  side3 = params[:side3].to_i
  @triangle = Triangle.new(side1, side2, side3)
  @triangle_final = @triangle.triangle_type
  erb(:answerpage)
end
