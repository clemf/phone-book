require 'bundler/setup'
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*rb'].each { |file| require file }

get '/' do
  @contacts = Contact.all
  erb :index
end

post '/add_contact' do
  name = params.fetch("name")
  Contact.new(name: name).save
  redirect '/'
end
