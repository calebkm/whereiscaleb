class WhereIsCaleb < Sinatra::Base
  get '/' do
    @location = 'Brattleboro'
    @photo = Photo.new
    
    haml :index
  end
end