class Pet
  attr_accessor :pet_name, :gender, :type, :pet_avail, :fav_toy
  def initialize(pet_name, gender, fav_toy, type, pet_avail)
    @pet_name = pet_name
    @gender = gender
    @fav_toy = fav_toy
    @type = type
    @pet_avail = pet_avail
  end
  def to_s
    "#{@pet_name} is a #{@gender} #{@type} who loves their toy #{@fav_toy} and #{@pet_avail} up for adoption"
  end
end
  
 
 