      require 'pry'
class Owner
  attr_accessor 
  attr_reader :name, :species
  attr_writer
  @@all_owners =  []
  
  # code goes here
  def initialize(name)
    @name = name
    @species = species
    @species = "human"
    @@all_owners << self
  end

  def say_species
    return "I am a #{species}."
  end

  def self.all
    @@all_owners
  end
# binding.pry
  def self.count
    @@all_owners.count 
  end

  def self.reset_all
    @@all_owners.clear
  end

  def cats
    Cat.all.select {|c| c.owner == self}
  end

  def dogs
    Dog.all.select {|c| c.owner == self}
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end
    
  def walk_dogs
    dogs.each {|d| d.mood = "happy"}
  end

  def feed_cats
    cats.each {|cat| cat.mood = "happy"}
  end

  def sell_pets
    dogs.each {|d| d.mood = "nervous"}
    cats.each {|cat| cat.mood = "nervous"}
    dogs.each {|d| d.owner = nil}
    cats.each {|cat| cat.owner = nil}
  end

  def list_pets
    return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end