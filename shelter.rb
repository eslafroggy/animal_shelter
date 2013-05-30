class Shelter
  attr_accessor :pets, :clients
  def initialize
    @pets = {}
    @clients = {}
  end
  def to_s
  puts "The shelter has #{@pets.count}"
  end    
end 