require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end
  
  get "/square/:number" do
    "#{params[:number].to_i * params[:number].to_i}"
  end
  
  get "/say/:number/:phrase" do
    string = ""
    params[:number].to_i.times do
      string += "#{params[:phrase]}\n"
    end
  end
  
  

end