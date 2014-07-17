# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [2,5,8])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [1,10,3])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [2,4,12])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [3,5,14])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [1,4,6])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [5,7,15])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [6,8,17])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [1,7,9])
    Room.create(goblin_shark: false, kracken: false,iceberg: false, lochness_monster: false, whirlpool: false, room_options: [8,9,10])
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

    @clean = Room.where(goblin_shark: false, lochness_monster:false, whirlpool:false, kracken:false, iceberg:false)


    GamePlay.create(room: @clean.find(rand(@clean.size)))

