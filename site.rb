require "sinatra"
require "haml"

class Site < Sinatra::Base
  get "/" do
    haml :index
  end

  get "/evento/novo" do
    haml :novo_evento
  end

  get "/:css_file.css" do |css_file|
    sass :"../public/css/#{css_file}"
  end
end
