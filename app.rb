require 'sinatra/base'
require 'mongoid'

class App < Sinatra::Base
  use Rack::Session::Cookie, :secret => "_viner_"

  set :root          , File.dirname(__FILE__)
  set :public_folder , File.dirname(__FILE__) + '/public'
  set :app_file      , __FILE__
  set :views         , File.dirname(__FILE__) + '/app/views'
  set :tests         , File.dirname(__FILE__) + '/tests'

  configure do
    #Mongoid.load!(File.dirname(__FILE__)+ '/config/database.yml')
  end
end

Dir[File.dirname(__FILE__) + "/app/helpers/*.rb"].each do |file|
  require file
end

Dir[File.dirname(__FILE__) + "/app/models/*.rb"].each do |file|
  require file
end

Dir[File.dirname(__FILE__) + "/app/controllers/*.rb"].each do |file|
  require file
end

