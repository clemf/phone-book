require 'spec_helper'

describe '.new' do
  it 'creates a new phone object with one phone number' do
    test_phone = Phone.new(number: 7079991234)
    expect(test_phone.number).to eq 7079991234
  end
end
