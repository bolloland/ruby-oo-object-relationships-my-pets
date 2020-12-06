    require 'pry'
class Cat
  attr_accessor :owner, :mood
  attr_reader :name
  attr_writer

  @@all_cats = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all_cats << self
  end
  # after do
  #   Owner.all.clear   ???
  # end

  def mood
    @mood
  end

  def self.all
    @@all_cats
  end
  
end
