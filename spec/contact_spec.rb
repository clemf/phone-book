require 'spec_helper'

describe '.new' do
  it 'creates a new contact object with just a name' do
    test_contact = Contact.new(name: 'Frank Bob')
    expect(test_contact.name).to eq 'Frank Bob'
  end
end
