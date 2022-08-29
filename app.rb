require "sinatra"

set :bind, "0.0.0.0"

class MyApp < Sinatra::Base
    get "/" do
        "GoodBye"
    end
end
