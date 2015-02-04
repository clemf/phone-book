require 'spec_helper'

describe '#initialize' do
  it 'creates a new phone object with one phone number' do
    test_phone = Phone.new(home: 7079991234)
    expect(test_phone.home).to eq 7079991234
  end

  it 'creates a new phone object with home and cell numbers' do
    test_phone = Phone.new(home: 7079991234, cell: 7078885432)
    expect(test_phone.home).to eq 7079991234
    expect(test_phone.cell).to eq 7078885432
  end
end
