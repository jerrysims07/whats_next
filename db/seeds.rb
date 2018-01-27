# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Chore.destroy_all
Room.destroy_all
Home.destroy_all

Home.create({ name: '2611 Essex' })

Room.create([
  { name: 'AirBnb', home: Home.first },
  { name: 'Den', home: Home.first },
  { name: 'Desk', home: Home.first },
  { name: 'Dining Room', home: Home.first },
  { name: 'Entry Way', home: Home.first },
  { name: 'Girls Bathroom', home: Home.first },
  { name: 'Girls Bedroom', home: Home.first },
  { name: 'Hall Bathroom', home: Home.first },
  { name: 'Kitchen', home: Home.first },
  { name: 'Living Room', home: Home.first },
  { name: 'Master Bathroom', home: Home.first },
  { name: 'Master Bedroom', home: Home.first },
  { name: 'Media Room', home: Home.first }
])

Chore.create([
  {
  room_id: Room.where(name: "Den").first.id,
  name: "Straighten Pillows / Blankets",
  frequency: 1,
  last_performed: Date.strptime("1/16/2018", "%m/%d/%Y"),
  priority: 175
  },
  {
  room_id: Room.where(name: "Master Bedroom").first.id,
  name: "Make the bed",
  frequency: 1,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 171
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Wipe stove top",
  frequency: 4,
  last_performed: Date.strptime("1/11/2018", "%m/%d/%Y"),
  priority: 170
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Wipe down counters",
  frequency: 1,
  last_performed: Date.strptime("1/11/2018", "%m/%d/%Y"),
  priority: 169
  },
  {
  room_id: Room.where(name: "Living Room").first.id,
  name: "Wipe away crumbs / fingerprints",
  frequency: 7,
  last_performed: Date.strptime("1/11/2018", "%m/%d/%Y"),
  priority: 167
  },
  {
  room_id: Room.where(name: "Den").first.id,
  name: "Wipe away crumbs / fingerprints",
  frequency: 1,
  last_performed: Date.strptime("1/16/2018", "%m/%d/%Y"),
  priority: 167
  },
  {
  room_id: Room.where(name: "Entry Way").first.id,
  name: "Run Roomba",
  frequency: 6,
  last_performed: Date.strptime("1/16/2018", "%m/%d/%Y"),
  priority: 160
  },
  {
  room_id: Room.where(name: "Living Room").first.id,
  name: "Neaten magazines, books, and games",
  frequency: 7,
  last_performed: Date.strptime("1/10/2018", "%m/%d/%Y"),
  priority: 159
  },
  {
  room_id: Room.where(name: "Den").first.id,
  name: "Neaten magazines, books, and games",
  frequency: 1,
  last_performed: Date.strptime("1/10/2018", "%m/%d/%Y"),
  priority: 159
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Spot wipe floor",
  frequency: 3,
  last_performed: Date.strptime("11/21/2017", "%m/%d/%Y"),
  priority: 157
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Sweep floor",
  frequency: 2,
  last_performed: Date.strptime("11/21/2017", "%m/%d/%Y"),
  priority: 156
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Wipe light switches",
  frequency: 14,
  last_performed: Date.strptime("11/14/2017", "%m/%d/%Y"),
  priority: 150
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Wipe backsplash",
  frequency: 7,
  last_performed: Date.strptime("1/11/2018", "%m/%d/%Y"),
  priority: 148
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Run Roomba",
  frequency: 7,
  last_performed: Date.strptime("1/10/2018", "%m/%d/%Y"),
  priority: 160
  },
  {
  room_id: Room.where(name: "Dining Room").first.id,
  name: "Run Roomba",
  frequency: 5,
  last_performed: Date.strptime("1/16/2018", "%m/%d/%Y"),
  priority: 160
  },
  {
  room_id: Room.where(name: "Girls Bathroom").first.id,
  name: "Clean toilet",
  frequency: 7,
  last_performed: Date.strptime("1/16/2018", "%m/%d/%Y"),
  priority: 143
  },
  {
  room_id: Room.where(name: "Girls Bedroom").first.id,
  name: "Gather all trash",
  frequency: 5,
  last_performed: Date.strptime("1/16/2018", "%m/%d/%Y"),
  priority: 142
  },
  {
  room_id: Room.where(name: "Living Room").first.id,
  name: "Run Roomba",
  frequency: 6,
  last_performed: Date.strptime("1/11/2018", "%m/%d/%Y"),
  priority: 160
  },
  {
  room_id: Room.where(name: "Den").first.id,
  name: "Run Roomba",
  frequency: 5,
  last_performed: Date.strptime("11/29/2017", "%m/%d/%Y"),
  priority: 160
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Clean cabinet shelves",
  frequency: 25,
  last_performed: Date.strptime("12/28/2017", "%m/%d/%Y"),
  priority: 137
  },
  {
  room_id: Room.where(name: "Media Room").first.id,
  name: "Wipe coffee counter and refrigerator",
  frequency: 7,
  last_performed: Date.strptime("11/3/2017", "%m/%d/%Y"),
  priority: 134
  },
  {
  room_id: Room.where(name: "Girls Bedroom").first.id,
  name: "Pick up all clothing",
  frequency: 10,
  last_performed: Date.strptime("11/23/2017", "%m/%d/%Y"),
  priority: 129
  },
  {
  room_id: Room.where(name: "Girls Bedroom").first.id,
  name: "Gather clutter that belongs elsewhere",
  frequency: 5,
  last_performed: Date.strptime("11/1/2017", "%m/%d/%Y"),
  priority: 128
  },
  {
  room_id: Room.where(name: "Living Room").first.id,
  name: "Clean glass surfaces",
  frequency: 7,
  last_performed: Date.strptime("1/11/2018", "%m/%d/%Y"),
  priority: 127
  },
  {
  room_id: Room.where(name: "Living Room").first.id,
  name: "Dust surfaces",
  frequency: 3,
  last_performed: Date.strptime("1/11/2018", "%m/%d/%Y"),
  priority: 126
  },
  {
  room_id: Room.where(name: "Girls Bathroom").first.id,
  name: "Spray / Wipe down faucets & sinks",
  frequency: 7,
  last_performed: Date.strptime("10/31/2017", "%m/%d/%Y"),
  priority: 125
  },
  {
  room_id: Room.where(name: "Den").first.id,
  name: "Clean glass surfaces",
  frequency: 7,
  last_performed: Date.strptime("11/23/2017", "%m/%d/%Y"),
  priority: 127
  },
  {
  room_id: Room.where(name: "Den").first.id,
  name: "Dust surfaces",
  frequency: 3,
  last_performed: Date.strptime("11/23/2017", "%m/%d/%Y"),
  priority: 126
  },
  {
  room_id: Room.where(name: "Den").first.id,
  name: "Pledge wood surfaces",
  frequency: 30,
  last_performed: Date.strptime("11/3/2017", "%m/%d/%Y"),
  priority: 117
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Dust hard-to-get-to areas",
  frequency: 30,
  last_performed: Date.strptime("11/6/2017", "%m/%d/%Y"),
  priority: 116
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Clean spills on refrigerator shelves",
  frequency: 7,
  last_performed: Date.strptime("11/28/2017", "%m/%d/%Y"),
  priority: 115
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Take out trash and clean trash can",
  frequency: 60,
  last_performed: Date.strptime("9/12/2017", "%m/%d/%Y"),
  priority: 111
  },
  {
  room_id: Room.where(name: "Living Room").first.id,
  name: "Return clutter items to elsewhere",
  frequency: 1,
  last_performed: Date.strptime("12/31/2017", "%m/%d/%Y"),
  priority: 110
  },
  {
  room_id: Room.where(name: "Girls Bedroom").first.id,
  name: "Make the bed",
  frequency: 1,
  last_performed: Date.strptime("12/28/2017", "%m/%d/%Y"),
  priority: 171
  },
  {
  room_id: Room.where(name: "Girls Bedroom").first.id,
  name: "Return out of place items to elsewhere",
  frequency: 3,
  last_performed: Date.strptime("11/1/2017", "%m/%d/%Y"),
  priority: 108
  },
  {
  room_id: Room.where(name: "Media Room").first.id,
  name: "Neaten magazines, books, and games",
  frequency: 1,
  last_performed: Date.strptime("12/14/2017", "%m/%d/%Y"),
  priority: 159
  },
  {
  room_id: Room.where(name: "Den").first.id,
  name: "Spray air freshener",
  frequency: 3,
  last_performed: Date.strptime("11/23/2017", "%m/%d/%Y"),
  priority: 103
  },
  {
  room_id: Room.where(name: "Media Room").first.id,
  name: "Spray air freshener",
  frequency: 1,
  last_performed: Date.strptime("10/18/2017", "%m/%d/%Y"),
  priority: 103
  },
  {
  room_id: Room.where(name: "Girls Bedroom").first.id,
  name: "Put away nightstand items",
  frequency: 5,
  last_performed: Date.strptime("11/1/2017", "%m/%d/%Y"),
  priority: 101
  },
  {
  room_id: Room.where(name: "Girls Bedroom").first.id,
  name: "Run Roomba",
  frequency: 15,
  last_performed: Date.strptime("10/16/2017", "%m/%d/%Y"),
  priority: 160
  },
  {
  room_id: Room.where(name: "Master Bedroom").first.id,
  name: "Gather clutter that belongs elsewhere",
  frequency: 3,
  last_performed: Date.strptime("11/3/2017", "%m/%d/%Y"),
  priority: 128
  },
  {
  room_id: Room.where(name: "Den").first.id,
  name: "Mop floor",
  frequency: 10,
  last_performed: Date.strptime("9/28/2017", "%m/%d/%Y"),
  priority: 95
  },
  {
  room_id: Room.where(name: "Media Room").first.id,
  name: "Straighten Pillows / Blankets",
  frequency: 1,
  last_performed: Date.strptime("12/14/2017", "%m/%d/%Y"),
  priority: 175
  },
  {
  room_id: Room.where(name: "Living Room").first.id,
  name: "Mop floor",
  frequency: 10,
  last_performed: Date.strptime("12/28/2017", "%m/%d/%Y"),
  priority: 95
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Clean sink with hot water & bleach",
  frequency: 30,
  last_performed: Date.strptime("10/25/2017", "%m/%d/%Y"),
  priority: 92
  },
  {
  room_id: Room.where(name: "Media Room").first.id,
  name: "Dust surfaces",
  frequency: 3,
  last_performed: Date.strptime("11/3/2017", "%m/%d/%Y"),
  priority: 126
  },
  {
  room_id: Room.where(name: "Media Room").first.id,
  name: "Wipe away crumbs / fingerprints",
  frequency: 1,
  last_performed: Date.strptime("11/22/2017", "%m/%d/%Y"),
  priority: 167
  },
  {
  room_id: Room.where(name: "Media Room").first.id,
  name: "Return clutter items to elsewhere",
  frequency: 1,
  last_performed: Date.strptime("12/14/2017", "%m/%d/%Y"),
  priority: 110
  },
  {
  room_id: Room.where(name: "Girls Bathroom").first.id,
  name: "Pick up what doesn't belong",
  frequency: 7,
  last_performed: Date.strptime("11/15/2017", "%m/%d/%Y"),
  priority: 87
  },
  {
  room_id: Room.where(name: "Dining Room").first.id,
  name: "Return clutter items to elsewhere",
  frequency: 3,
  last_performed: Date.strptime("12/28/2017", "%m/%d/%Y"),
  priority: 110
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Clean glass surfaces",
  frequency: 14,
  last_performed: Date.strptime("11/14/2017", "%m/%d/%Y"),
  priority: 127
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Spray appliance fronts",
  frequency: 11,
  last_performed: Date.strptime("11/21/2017", "%m/%d/%Y"),
  priority: 84
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Clean cabinets / drawer fronts",
  frequency: 14,
  last_performed: Date.strptime("11/14/2017", "%m/%d/%Y"),
  priority: 83
  },
  {
  room_id: Room.where(name: "Master Bedroom").first.id,
  name: "Return out of place items to elsewhere",
  frequency: 2,
  last_performed: Date.strptime("10/6/2017", "%m/%d/%Y"),
  priority: 108
  },
  {
  room_id: Room.where(name: "Girls Bathroom").first.id,
  name: "Clean mirror",
  frequency: 7,
  last_performed: Date.strptime("10/31/2017", "%m/%d/%Y"),
  priority: 81
  },
  {
  room_id: Room.where(name: "Girls Bathroom").first.id,
  name: "Sweep floor",
  frequency: 14,
  last_performed: Date.strptime("10/31/2017", "%m/%d/%Y"),
  priority: 156
  },
  {
  room_id: Room.where(name: "Girls Bathroom").first.id,
  name: "Spray shower",
  frequency: 30,
  last_performed: Date.strptime("11/15/2017", "%m/%d/%Y"),
  priority: 79
  },
  {
  room_id: Room.where(name: "Den").first.id,
  name: "Return clutter items to elsewhere",
  frequency: 1,
  last_performed: Date.strptime("9/20/2017", "%m/%d/%Y"),
  priority: 110
  },
  {
  room_id: Room.where(name: "Master Bedroom").first.id,
  name: "Dust surfaces",
  frequency: 4,
  last_performed: Date.strptime("10/6/2017", "%m/%d/%Y"),
  priority: 126
  },
  {
  room_id: Room.where(name: "Den").first.id,
  name: "Vacuum couch",
  frequency: 10,
  last_performed: Date.strptime("9/27/2017", "%m/%d/%Y"),
  priority: 76
  },
  {
  room_id: Room.where(name: "Media Room").first.id,
  name: "Wipe light switches / doorknobs ",
  frequency: 14,
  last_performed: Date.strptime("11/3/2017", "%m/%d/%Y"),
  priority: 71
  },
  {
  room_id: Room.where(name: "Girls Bedroom").first.id,
  name: "Dust surfaces",
  frequency: 10,
  last_performed: Date.strptime("11/1/2017", "%m/%d/%Y"),
  priority: 126
  },
  {
  room_id: Room.where(name: "Girls Bathroom").first.id,
  name: "Mop floor",
  frequency: 14,
  last_performed: Date.strptime("10/31/2017", "%m/%d/%Y"),
  priority: 95
  },
  {
  room_id: Room.where(name: "Master Bathroom").first.id,
  name: "Mop floor",
  frequency: 21,
  last_performed: Date.strptime("11/15/2017", "%m/%d/%Y"),
  priority: 95
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Refresh light bulbs",
  frequency: 14,
  last_performed: Date.strptime("11/14/2017", "%m/%d/%Y"),
  priority: 65
  },
  {
  room_id: Room.where(name: "Master Bedroom").first.id,
  name: "Pledge wood surfaces",
  frequency: 21,
  last_performed: Date.strptime("9/22/2017", "%m/%d/%Y"),
  priority: 117
  },
  {
  room_id: Room.where(name: "Media Room").first.id,
  name: "Vacuum couch",
  frequency: 21,
  last_performed: Date.strptime("9/26/2017", "%m/%d/%Y"),
  priority: 76
  },
  {
  room_id: Room.where(name: "Girls Bathroom").first.id,
  name: "Change towels",
  frequency: 14,
  last_performed: Date.strptime("9/12/2017", "%m/%d/%Y"),
  priority: 62
  },
  {
  room_id: Room.where(name: "Dining Room").first.id,
  name: "Pledge wood surfaces",
  frequency: 120,
  last_performed: Date.strptime("9/21/2017", "%m/%d/%Y"),
  priority: 117
  },
  {
  room_id: Room.where(name: "Girls Bathroom").first.id,
  name: "Clean Shower",
  frequency: 30,
  last_performed: Date.strptime("10/31/2017", "%m/%d/%Y"),
  priority: 59
  },
  {
  room_id: Room.where(name: "Girls Bedroom").first.id,
  name: "Mop floor",
  frequency: 15,
  last_performed: Date.strptime("9/18/2017", "%m/%d/%Y"),
  priority: 95
  },
  {
  room_id: Room.where(name: "Girls Bathroom").first.id,
  name: "Wash bashroom rugs ",
  frequency: 30,
  last_performed: Date.strptime("9/15/2017", "%m/%d/%Y"),
  priority: 57
  },
  {
  room_id: Room.where(name: "Master Bedroom").first.id,
  name: "Strip the bed",
  frequency: 30,
  last_performed: Date.strptime("12/1/2017", "%m/%d/%Y"),
  priority: 56
  },
  {
  room_id: Room.where(name: "Master Bathroom").first.id,
  name: "Wash bathroom rugs",
  frequency: 21,
  last_performed: Date.strptime("11/22/2017", "%m/%d/%Y"),
  priority: 54
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Change out dish towel",
  frequency: 7,
  last_performed: Date.strptime("11/21/2017", "%m/%d/%Y"),
  priority: 52
  },
  {
  room_id: Room.where(name: "Girls Bedroom").first.id,
  name: "Pledge wood surfaces",
  frequency: 20,
  last_performed: Date.strptime("10/16/2017", "%m/%d/%Y"),
  priority: 117
  },
  {
  room_id: Room.where(name: "Girls Bathroom").first.id,
  name: "Dust light fixtures",
  frequency: 14,
  last_performed: Date.strptime("11/15/2017", "%m/%d/%Y"),
  priority: 49
  },
  {
  room_id: Room.where(name: "Den").first.id,
  name: "Wipe light switches / doorknobs",
  frequency: 50,
  last_performed: Date.strptime("11/23/2017", "%m/%d/%Y"),
  priority: 45
  },
  {
  room_id: Room.where(name: "Master Bedroom").first.id,
  name: "Spot clean baseboards / walls",
  frequency: 25,
  last_performed: Date.strptime("10/6/2017", "%m/%d/%Y"),
  priority: 43
  },
  {
  room_id: Room.where(name: "Master Bedroom").first.id,
  name: "Vacuum mattress",
  frequency: 30,
  last_performed: Date.strptime("10/24/2017", "%m/%d/%Y"),
  priority: 42
  },
  {
  room_id: Room.where(name: "Master Bedroom").first.id,
  name: "Crevice vacuum corners",
  frequency: 30,
  last_performed: Date.strptime("10/6/2017", "%m/%d/%Y"),
  priority: 41
  },
  {
  room_id: Room.where(name: "Girls Bedroom").first.id,
  name: "Spot clean baseboards / walls",
  frequency: 45,
  last_performed: Date.strptime("11/3/2017", "%m/%d/%Y"),
  priority: 43
  },
  {
  room_id: Room.where(name: "Girls Bathroom").first.id,
  name: "Clean hair out of drain",
  frequency: 30,
  last_performed: Date.strptime("10/31/2017", "%m/%d/%Y"),
  priority: 39
  },
  {
  room_id: Room.where(name: "Desk").first.id,
  name: "Email for next 7 days guests",
  frequency: 1,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 200
  },
  {
  room_id: Room.where(name: "Desk").first.id,
  name: "Text picture to tomorro's guest",
  frequency: 1,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 199
  },
  {
  room_id: Room.where(name: "Desk").first.id,
  name: "Email Inbox to Zero",
  frequency: 1,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 198
  },
  {
  room_id: Room.where(name: "Desk").first.id,
  name: "Physical inbox to BuJo",
  frequency: 1,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 197
  },
  {
  room_id: Room.where(name: "Desk").first.id,
  name: "BuJo: Projects to Next Actions",
  frequency: 2,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 196
  },
  {
  room_id: Room.where(name: "Desk").first.id,
  name: "Confirm cash in checking account",
  frequency: 3,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 195
  },
  {
  room_id: Room.where(name: "Entry Way").first.id,
  name: "Water plant",
  frequency: 5,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 194
  },
  {
  room_id: Room.where(name: "Living Room").first.id,
  name: "Water Birds of Paradise",
  frequency: 6,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 193
  },
  {
  room_id: Room.where(name: "Hall Bathroom").first.id,
  name: "Clean toilet",
  frequency: 5,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 143
  },
  {
  room_id: Room.where(name: "Hall Bathroom").first.id,
  name: "Spray toilet surface",
  frequency: 5,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 191
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Empty sink of dirty dishes",
  frequency: 1,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 190
  },
  {
  room_id: Room.where(name: "Dining Room").first.id,
  name: "Clear clutter from table",
  frequency: 3,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 189
  },
  {
  room_id: Room.where(name: "Dining Room").first.id,
  name: "Dry wipe table",
  frequency: 3,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 188
  },
  {
  room_id: Room.where(name: "Hall Bathroom").first.id,
  name: "Empty trash",
  frequency: 7,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 187
  },
  {
  room_id: Room.where(name: "Master Bathroom").first.id,
  name: "Clean toilet",
  frequency: 7,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 143
  },
  {
  room_id: Room.where(name: "Master Bathroom").first.id,
  name: "Empty trash",
  frequency: 5,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 187
  },
  {
  room_id: Room.where(name: "Master Bathroom").first.id,
  name: "Spray toilet surface",
  frequency: 7,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 191
  },
  {
  room_id: Room.where(name: "Desk").first.id,
  name: "Make list of recurring monthly charges",
  frequency: 22,
  last_performed: Date.strptime("1/6/2018", "%m/%d/%Y"),
  priority: 183
  },
  {
  room_id: Room.where(name: "Desk").first.id,
  name: "Make to-do list for day",
  frequency: 1,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 182
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Empty Dishwasher",
  frequency: 1,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 181
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Collect clutter into neat pile",
  frequency: 1,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 180
  },
  {
  room_id: Room.where(name: "Desk").first.id,
  name: "Update YNAB - Renasant",
  frequency: 7,
  last_performed: Date.strptime("1/22/2018", "%m/%d/%Y"),
  priority: 179
  },
  {
  room_id: Room.where(name: "Desk").first.id,
  name: "Update YNAB - Southwest Chase",
  frequency: 3,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 178
  },
  {
  room_id: Room.where(name: "Entry Way").first.id,
  name: "Wipe away crumbs / fingerprints",
  frequency: 11,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 167
  },
  {
  room_id: Room.where(name: "Living Room").first.id,
  name: "Straighten Pillows / Blankets",
  frequency: 7,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 175
  },
  {
  room_id: Room.where(name: "Hall Bathroom").first.id,
  name: "Pick up what doesnt belong",
  frequency: 8,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 87
  },
  {
  room_id: Room.where(name: "Hall Bathroom").first.id,
  name: "Clean mirror",
  frequency: 8,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 81
  },
  {
  room_id: Room.where(name: "Desk").first.id,
  name: "Pay all paper bills",
  frequency: 14,
  last_performed: Date.strptime("1/12/2018", "%m/%d/%Y"),
  priority: 172
  },
  {
  room_id: Room.where(name: "Dining Room").first.id,
  name: "Clean table",
  frequency: 5,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 168
  },
  {
  room_id: Room.where(name: "Hall Bathroom").first.id,
  name: "Spray / Wipe down faucets & sinks",
  frequency: 8,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 125
  },
  {
  room_id: Room.where(name: "Desk").first.id,
  name: "Block days within 2 weeks",
  frequency: 4,
  last_performed: Date.strptime("1/22/2018", "%m/%d/%Y"),
  priority: 163
  },
  {
  room_id: Room.where(name: "Desk").first.id,
  name: "Check last 2 weeks of 6 months for pricing",
  frequency: 4,
  last_performed: Date.strptime("1/22/2018", "%m/%d/%Y"),
  priority: 162
  },
  {
  room_id: Room.where(name: "Master Bathroom").first.id,
  name: "Dry wipe vanity",
  frequency: 7,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 161
  },
  {
  room_id: Room.where(name: "Entry Way").first.id,
  name: "Spray air freshener",
  frequency: 1,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 103
  },
  {
  room_id: Room.where(name: "Entry Way").first.id,
  name: "Return clutter items to elsewhere",
  frequency: 1,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 110
  },
  {
  room_id: Room.where(name: "Master Bathroom").first.id,
  name: "Wet clean vanity",
  frequency: 7,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 153
  },
  {
  room_id: Room.where(name: "Master Bathroom").first.id,
  name: "Spray / Wipe down faucets & sinks",
  frequency: 7,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 125
  },
  {
  room_id: Room.where(name: "Entry Way").first.id,
  name: "Wipe light switches / doorknobs",
  frequency: 21,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 71
  },
  {
  room_id: Room.where(name: "Desk").first.id,
  name: "Deposit checks",
  frequency: 14,
  last_performed: Date.strptime("1/12/2018", "%m/%d/%Y"),
  priority: 149
  },
  {
  room_id: Room.where(name: "Master Bathroom").first.id,
  name: "Clean mirror",
  frequency: 7,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 81
  },
  {
  room_id: Room.where(name: "Hall Bathroom").first.id,
  name: "Sweep floor",
  frequency: 14,
  last_performed: Date.strptime("1/16/2018", "%m/%d/%Y"),
  priority: 156
  },
  {
  room_id: Room.where(name: "Desk").first.id,
  name: "Update YNAB - Chase",
  frequency: 7,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 141
  },
  {
  room_id: Room.where(name: "Dining Room").first.id,
  name: "Neaten bar",
  frequency: 3,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 138
  },
  {
  room_id: Room.where(name: "Dining Room").first.id,
  name: "Spray air freshener",
  frequency: 4,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 103
  },
  {
  room_id: Room.where(name: "Girls Bedroom").first.id,
  name: "Strip the bed",
  frequency: 30,
  last_performed: Date.strptime("12/28/2017", "%m/%d/%Y"),
  priority: 56
  },
  {
  room_id: Room.where(name: "Hall Bathroom").first.id,
  name: "Mop floor",
  frequency: 14,
  last_performed: Date.strptime("1/16/2018", "%m/%d/%Y"),
  priority: 95
  },
  {
  room_id: Room.where(name: "Master Bathroom").first.id,
  name: "Spray shower",
  frequency: 7,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 79
  },
  {
  room_id: Room.where(name: "Master Bathroom").first.id,
  name: "Clean Shower",
  frequency: 7,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 59
  },
  {
  room_id: Room.where(name: "Girls Bathroom").first.id,
  name: "Empty trash",
  frequency: 7,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 187
  },
  {
  room_id: Room.where(name: "Master Bedroom").first.id,
  name: "Pick up all clothing",
  frequency: 3,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 129
  },
  {
  room_id: Room.where(name: "Master Bedroom").first.id,
  name: "Empty trash",
  frequency: 5,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 187
  },
  {
  room_id: Room.where(name: "Girls Bathroom").first.id,
  name: "Spray toilet surface",
  frequency: 14,
  last_performed: Date.strptime("1/16/2018", "%m/%d/%Y"),
  priority: 191
  },
  {
  room_id: Room.where(name: "Master Bathroom").first.id,
  name: "Pick up what doesn't belong",
  frequency: 3,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 87
  },
  {
  room_id: Room.where(name: "Dining Room").first.id,
  name: "Dust surfaces",
  frequency: 10,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 126
  },
  {
  room_id: Room.where(name: "Desk").first.id,
  name: "Update budget",
  frequency: 5,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 114
  },
  {
  room_id: Room.where(name: "Master Bedroom").first.id,
  name: "Put away nightstand items",
  frequency: 2,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 101
  },
  {
  room_id: Room.where(name: "Desk").first.id,
  name: "Put away items in desk",
  frequency: 3,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 112
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Quick scrub sink",
  frequency: 2,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 107
  },
  {
  room_id: Room.where(name: "Desk").first.id,
  name: "Gather clutter from elsewhere",
  frequency: 3,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 106
  },
  {
  room_id: Room.where(name: "Living Room").first.id,
  name: "Spray air freshener",
  frequency: 5,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 103
  },
  {
  room_id: Room.where(name: "Entry Way").first.id,
  name: "Dust surfaces",
  frequency: 7,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 126
  },
  {
  room_id: Room.where(name: "Master Bedroom").first.id,
  name: "Run Roomba",
  frequency: 7,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 160
  },
  {
  room_id: Room.where(name: "Media Room").first.id,
  name: "Run Roomba",
  frequency: 5,
  last_performed: Date.strptime("1/22/2018", "%m/%d/%Y"),
  priority: 160
  },
  {
  room_id: Room.where(name: "Dining Room").first.id,
  name: "Wipe light switches / doorknobs ",
  frequency: 30,
  last_performed: Date.strptime("12/28/2017", "%m/%d/%Y"),
  priority: 71
  },
  {
  room_id: Room.where(name: "Hall Bathroom").first.id,
  name: "Dust light fixtures",
  frequency: 16,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 49
  },
  {
  room_id: Room.where(name: "Desk").first.id,
  name: "Wipe Counter",
  frequency: 14,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 73
  },
  {
  room_id: Room.where(name: "Master Bathroom").first.id,
  name: "Sweep floor",
  frequency: 7,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 156
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Dispose of spoiled food",
  frequency: 7,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 68
  },
  {
  room_id: Room.where(name: "Hall Bathroom").first.id,
  name: "Change towels",
  frequency: 14,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 62
  },
  {
  room_id: Room.where(name: "Master Bathroom").first.id,
  name: "Clean hair out of drain",
  frequency: 21,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 39
  },
  {
  room_id: Room.where(name: "Master Bathroom").first.id,
  name: "Dust light fixtures",
  frequency: 7,
  last_performed: Date.strptime("1/23/2018", "%m/%d/%Y"),
  priority: 49
  },
  {
  room_id: Room.where(name: "Hall Bathroom").first.id,
  name: "Clean tub",
  frequency: 45,
  last_performed: Date.strptime("12/14/2017", "%m/%d/%Y"),
  priority: 53
  },
  {
  room_id: Room.where(name: "Hall Bathroom").first.id,
  name: "Clean hair out of drain",
  frequency: 100,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 39
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Wipe spills off floor of oven",
  frequency: 14,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 48
  },
  {
  room_id: Room.where(name: "Entry Way").first.id,
  name: "Pledge wood surfaces",
  frequency: 60,
  last_performed: Date.strptime("12/28/2017", "%m/%d/%Y"),
  priority: 117
  },
  {
  room_id: Room.where(name: "Kitchen").first.id,
  name: "Clean microwave",
  frequency: 14,
  last_performed: Date.strptime("1/24/2018", "%m/%d/%Y"),
  priority: 46
  },
  {
  room_id: Room.where(name: "Living Room").first.id,
  name: "Wipe light switches / doorknobs ",
  frequency: 30,
  last_performed: Date.strptime("12/28/2017", "%m/%d/%Y"),
  priority: 71
  }
  ])

  p "Created #{Room.count} rooms"
  p "Created #{Chore.count} chores"
