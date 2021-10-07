require "sinatra"
require "sinatra/reloader" if development?

get "/" do
  erb(:index)
end

post "/birthday" do
  @name = params[:name]
  @day = params[:day]
  @month = params[:month]
  erb(:birthday)
end
