require 'spec_helper'

describe '#initialize' do
  it 'creates a new contact object with just a name' do
    test_contact = Contact.new(name: 'Frank Bob')
    expect(test_contact.name).to eq 'Frank Bob'
  end
end

describe '#initialize' do
  it 'creates a new contact object with name and phone' do
    test_phone = Phone.new(home: 1234567, cell: 7654321)
    test_contact = Contact.new(name: 'Bob Frank', phone: test_phone)
    expect(test_contact.name).to eq 'Bob Frank'
    expect(test_contact.phone).to eq test_phone
  end
end

describe "#save" do
  it 'saves the contact to a class variable array' do
    test_contact = Contact.new(name: 'Frank Bob')
    test_contact.save
    expect(Contact.all).to eq [test_contact]
  end
end
