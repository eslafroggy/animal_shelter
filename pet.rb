class Pet
  attr_accessor :pet_name, :gender, :type, :fav_toy, :is_avail
  def initialize(pet_name, gender, fav_toy, type, is_avail)
    @pet_name = pet_name
    @gender = gender
    @fav_toy = fav_toy
    @type = type
    @is_avail = is_avail
  end
    
  def to_s
    "#{@pet_name} is a #{@gender} #{@type} who loves their toy #{@fav_toy} and #{@is_avail} up for adoption"
  end
end
  
 
 