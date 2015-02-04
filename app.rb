require 'bundler/setup'
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*rb'].each { |file| require file }

get '/' do
  @contacts = Contact.all
  erb :index
end

post '/add_contact' do
  name = params.fetch("name")
  home = params.fetch("home")
  cell = params.fetch("cell")
  phone = Phone.new(home: home, cell: cell)
  Contact.new(name: name, phone: phone).save
  redirect '/'
end
