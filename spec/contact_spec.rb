require 'spec_helper'

describe '#name' do
  it 'creates a new contact object' do
    test_contact = Contact.new(name: 'Frank Bob')
    expect(test_contact.name).to eq 'Frank Bob'
  end
end
