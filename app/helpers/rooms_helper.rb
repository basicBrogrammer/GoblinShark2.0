module RoomsHelper
  def init_rooms
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
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [9,17,19])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [11,18,20])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [13,16,19])

    @randroom = (1..20).to_a.shuffle
    Room.update(@randroom.pop, goblin_shark: true)
    Room.update(@randroom.pop, kracken: true)
    Room.update(@randroom.pop, iceberg: true)
    Room.update(@randroom.pop, lochness_monster: true)
    Room.update(@randroom.pop, whirlpool: true)
  end

  def reset_rooms
    Room.update(1,goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [2,5,8])
    Room.update(2,goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [1,10,3])
    Room.update(3,goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [2,4,12])
    Room.update(4,goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [3,5,14])
    Room.update(5,goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [1,4,6])
    Room.update(6,goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [5,7,15])
    Room.update(7,goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [6,8,17])
    Room.update(8,goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [1,7,9])
    Room.update(9, goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [8,10,18])
    Room.update(10,goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [2,9,11])
    Room.update(11,goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [10,12,19])
    Room.update(12,goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [3,11,13])
    Room.update(13,goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [12,14,20])
    Room.update(14,goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [4,13,15])
    Room.update(15,goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [6,14,16])
    Room.update(16,goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [15,17,20])
    Room.update(17,goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [7,16,18])
    Room.update(18,goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [9,17,19])
    Room.update(19,goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [11,18,20])
    Room.update(20,goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [13,16,19])

    @randroom = (1..20).to_a.shuffle
    Room.update(@randroom.pop, goblin_shark: true)
    Room.update(@randroom.pop, kracken: true)
    Room.update(@randroom.pop, iceberg: true)
    Room.update(@randroom.pop, lochness_monster: true)
    Room.update(@randroom.pop, whirlpool: true)
  end

end
