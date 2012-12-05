class Pokemon < ActiveRecord::Base
  belongs_to :pokedex
  belongs_to :admin_user
  attr_accessible :name, :number, :type, :version, :captured, :admin_user_id, :pokedex_id
end
