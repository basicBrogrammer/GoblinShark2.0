class GamePlay < ActiveRecord::Base
  belongs_to :room
  include GamePlaysHelper



end
