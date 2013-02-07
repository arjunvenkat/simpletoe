class Box < ActiveRecord::Base
  attr_accessible :name, :game_id, :status

  belongs_to :game
end
