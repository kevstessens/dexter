class Pokedex < ActiveRecord::Base
  has_many :pokemons
  attr_accessible :name, :quantity
end
