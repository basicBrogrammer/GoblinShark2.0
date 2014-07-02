class Room < ActiveRecord::Base
  serialize :room_options
  has_one :game_play


end
