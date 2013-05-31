require 'pry'

require_relative "shelter"
require_relative "pet"
require_relative "client"

p1 = Pet.new("Lassie", "female", "ball", "dog", true)
p2 = Pet.new("Bonnie", "Female", "rock", "lizard", true)
p3 = Pet.new("Todo", "Male", "ball", "cat", false)
p4 = Pet.new("Leila", "Female", "mouse", "dog", true)
p5 = Pet.new("Blue", "Male", "mouse", "dog", true)
p6 = Pet.new("Bambi", "Female", "none", "dog", false)
p7 = Pet.new("Buster", "Male", "stuffed taco", "cat", false)
p8 = Pet.new("Bobo", "Male", "stuffed taco", "cat", false)
p9 = Pet.new("Buggy", "Female", "rock", "lizard", false)

s1 = Shelter.new

a1 = [p1, p2, p3, p4, p5, p6, p7, p8, p9]
a1.each do |pet|
  s1.pets[pet.pet_name] = pet
end

print "Would you like to (a)dopt, (s)urrender a pet, or (q)uit?"
response = gets.chomp.downcase

while response != "q"

  if response == "a"
    print "What is your name: "
    client_name = gets.chomp.capitalize

    print "What is your address: "
    address = gets.chomp.capitalize

    print "Hi, #{client_name}, here are our available pets: " 
    
    a1.each do |pet|  
     if pet.is_avail == true 
      puts pet
     else
      next 
      end
    end

    print "Which pet would you like to adopt?"
    pet_name = gets.chomp.capitalize
    puts "Excellent choice. #{pet_name.capitalize} will love their new home! "
    #do we need to do anything else here or aw we good?
    #I just chenged "his" to "their" and called "capitalize" on pet_name. Nothing major

  else response == "s"
    print "What is your name: "
    client_name = gets.chomp.capitalize

    print "What is your address: "
    address = gets.chomp.capitalize

    print "What is the name of your pet: "
    pet_name = gets.chomp.capitalize

    print "What is the gender of your pet: "
    gender = gets.chomp.downcase

    print "Whar is your pet's favorite toy: "
    fav_toy = gets.chomp.downcase

    puts "We will find a nice home for #{pet_name.capitalize}. Thanks. "
    
  end
  print "Would you like to (a)dopt, (s)urrender a pet, or (q)uit?"
  response = gets.chomp.downcase
  

end



binding.pry