class WhereIsCaleb < Sinatra::Base
  get '/' do
    @location = 'Seattle'
    @photo = Photo.new
    
    haml :index
  end
end