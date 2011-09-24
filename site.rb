require "sinatra"
require "haml"

class Site < Sinatra::Base
  get "/" do
    haml :index
  end
end
