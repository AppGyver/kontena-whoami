require 'sinatra'
require 'artii'

def better_hostname
  return ENV['HOSTNAME'] if ENV['HOSTNAME'].include? "kontena.local"

  "kontena-whoami-99.kontena.local"
end

get '/' do
  a = Artii::Base.new :font => 'graffiti'
  instance_number = better_hostname.split(".").first.split("-").last
  erb :index, locals: {
    instance_number_ascii: a.asciify(instance_number)
  }
end
