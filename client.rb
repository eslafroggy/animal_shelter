class Client
  attr_accessor :client_name, :address, :pet_name
  def initialize(client_name, address)
    @client_name = client_name
    @address = address
  end
end