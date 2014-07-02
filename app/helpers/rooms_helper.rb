module RoomsHelper
  def randrooms
    Room.all.delete_all
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [2,5,8])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [1,10,3])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [2,4,12])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [3,5,14])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [1,4,6])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [5,7,15])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [6,8,17])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [1,7,9])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [8,10,18])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [2,9,11])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [10,12,19])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [3,11,13])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [12,14,20])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [4,13,15])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [6,14,16])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [15,17,20])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [7,16,18])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [9,16,18])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [11,18,20])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [13,16,19])



  end

end
