module GamePlaysHelper
  include RoomsHelper

  def status(room)
    if room.goblin_shark
      GamePlay.delete_all
      GamePlay.create(room: Room.find_by(goblin_shark: false, lochness_monster:false, whirlpool:false, kracken:false, iceberg:false))
      @gameover = true
      return "The Goblin Shark was in that room! He ate you up!!"
    end
    if room.whirlpool
      GamePlay.delete_all
      GamePlay.create(room: Room.find_by(goblin_shark: false, lochness_monster:false, whirlpool:false, kracken:false, iceberg:false))
      @gameover = true
      return "There was an whirlpool in that room! You died!"

    end
    if room.iceberg
      GamePlay.delete_all
      GamePlay.create(room: Room.find_by(goblin_shark: false, lochness_monster:false, whirlpool:false, kracken:false, iceberg:false))
      @gameover = true
      return "There was an iceberg in that room! You died!"
    end
    if room.lochness_monster
      @monster = true
      return button_to "The Lochness Monster is carrying you to a new room! Click here to play dead.", {action: "new", params: {room_id:rand(1..20) }}, class: " button alert"
    end
    if room.kracken
      @monster = true
       return button_to "The Kracken has emerged and is carrying you to a new room! Click here to play dead.", {action: "new", params: {room_id:rand(1..20) }}, class: " button alert"
    end
  end

  def senses
    @sense = ""
    @current_room.room_options.each do |x|

      if Room.find(x).kracken
        @sense +=  "My spidey senes fear the Kracken is near"
      end

      if Room.find(x).lochness_monster
        @sense +=  "My spidey senes fear the Lochness Monster is near."
      end

      if Room.find(x).iceberg
        @sense +=   "The water is really fridged. There may be an iceberg near by."
      end

      if Room.find(x).whirlpool
        @sense +=  "I feel a disturbance in the ether. There must be a whirlpool near."
      end

      if Room.find(x).goblin_shark
        @sense +=  "Do you hear that? Sounds like the dreaded Goblin shark is near."
      end
    end
  end

end

