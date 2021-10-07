require "sinatra"
require "sinatra/reloader" if development?

get "/" do
  erb(:index)
end

post "/birthday" do
  "BIRTHDAY"
  @name = params[:name].capitalize
  @birthday = params[:birthday]
  @now = Time.now.strftime("%Y-%m-%d")
  erb(:birthday)
end
