    require 'pry'
class Dog
  attr_accessor :owner, :mood
  attr_reader :name
  attr_writer

  @@all_dogs   = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all_dogs << self
  end
  # after do
  #   Owner.all.clear   ???
  # end

  def mood
    @mood
  end

  def self.all
    @@all_dogs
  end
  
end