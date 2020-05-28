Player.destroy_all
Location.destroy_all
Schedule.destroy_all

#players
p1 = Player.create({name: "James"})
p2 = Player.create({name: "Julia"})
p2 = Player.create({name: "Marie"})
p2 = Player.create({name: "Lamar"})
p2 = Player.create({name: "Will"})

#locations
l1 = Location.create({venue: "Bronx"})
l2 = Location.create({venue: "Brooklyn"})
l3 = Location.create({venue: "Manhattan"})
l4 = Location.create({venue: "Queens"})
l5 = Location.create({venue: "Staten Island"})

#schedules
t1 = Schedule.create({time: "August 29 2020 1:15 P.M."})
t2 = Schedule.create({time: "August 29 2020 1:45 P.M."})
t3 = Schedule.create({time: "August 29 2020 2:15 P.M."})
t4 = Schedule.create({time: "August 29 2020 2:45 P.M."})
t5 = Schedule.create({time: "August 29 2020 3:15 P.M."})
t6 = Schedule.create({time: "August 29 2020 3:45 P.M."})
t7 = Schedule.create({time: "August 29 2020 4:15 P.M."})
t8 = Schedule.create({time: "August 29 2020 5:45 P.M."})