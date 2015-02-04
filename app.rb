require 'bundler/setup'
Bundler.require(:default, :test)

Dir[File.dirname(__FILE__) + '/lib/*rb'].each { |file| require file }

get '/' do
  @contacts = Contact.all
  erb :index
end
