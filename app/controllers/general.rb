class App < Sinatra::Base
  configure do
    $client = Viner::Client.new
    $client.login("ahmetabdi@gmail.com", "google555")
  end

  get '/' do
    erb :'general/index'
  end

  get '/cats' do
    erb :'general/cats'
  end

  get '/dogs' do
    erb :'general/dogs'
  end

  get '/scary' do
    erb :'general/scary'
  end

  get '/funny' do
    erb :'general/funny'
  end

  get '/:id' do
    erb :'general/search'
  end

end
