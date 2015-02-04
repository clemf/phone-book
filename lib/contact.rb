class Contact
  attr_reader :name, :phone
  @@contacts = []

  def initialize args
    args.each do |key, value|
      instance_variable_set("@#{key}", value) unless value.nil?
    end
  end

  def save
    @@contacts.push(self)
  end

  def self.all
    @@contacts
  end
end
