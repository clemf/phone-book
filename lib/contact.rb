class Contact
  attr_reader :name, :phone

  def initialize args
    args.each do |key, value|
      instance_variable_set("@#{key}", value) unless value.nil?
    end
  end
end
