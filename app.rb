require 'sinatra'
require 'artii'

if settings.development?
  require 'sinatra/reloader'
end

before do
  return unless settings.development?

  ENV['HOSTNAME'] = "kontena-whoami-99.kontena.local"
  ENV['KONTENA_NODE_NAME'] = "kontena-dev-node-name-01"
end

get '/' do
  a = Artii::Base.new :font => 'graffiti'
  instance_number = ENV['HOSTNAME'].split(".").first.split("-").last

  erb :index, locals: {
    instance_number_ascii: a.asciify(instance_number)
  }
end

get '/__health_check' do
  "ok"
end
