class Snipping < Sinatra::Base
  get '/' do
    haml :index
  end
end