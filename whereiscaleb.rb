class WhereIsCaleb < Sinatra::Base
  get '/' do
    @location = ScrapeYelp.new.()
    @photo = Photo.new
    
    haml :index
  end
end