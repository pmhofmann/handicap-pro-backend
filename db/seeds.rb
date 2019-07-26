# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

aiden = Player.create(email: "aiden@flatiron.com", password_digest:"password", name:"Aiden", hcp: 18)

ragc = Course.create(name: "Royal Ascot GC", county: "Berkshire", url: "https://www.royalascotgolfclub.co.uk/")
hole1 = Hole.create(course_id: ragc.id, hole_number: 1, yardage: 350, par: 4)
hole2 = Hole.create(course_id: ragc.id, hole_number: 2, yardage: 350, par: 4)
hole3 = Hole.create(course_id: ragc.id, hole_number: 3, yardage: 350, par: 4)
hole4 = Hole.create(course_id: ragc.id, hole_number: 4, yardage: 350, par: 4)
hole5 = Hole.create(course_id: ragc.id, hole_number: 5, yardage: 350, par: 4)
hole6 = Hole.create(course_id: ragc.id, hole_number: 6, yardage: 350, par: 4)
hole7 = Hole.create(course_id: ragc.id, hole_number: 7, yardage: 350, par: 4)
hole8 = Hole.create(course_id: ragc.id, hole_number: 8, yardage: 350, par: 4)
hole9 = Hole.create(course_id: ragc.id, hole_number: 9, yardage: 350, par: 4)
hole10 = Hole.create(course_id: ragc.id, hole_number: 10, yardage: 350, par: 4)
hole11 = Hole.create(course_id: ragc.id, hole_number: 11, yardage: 350, par: 4)
hole12 = Hole.create(course_id: ragc.id, hole_number: 12, yardage: 350, par: 4)
hole13 = Hole.create(course_id: ragc.id, hole_number: 13, yardage: 350, par: 4)
hole14 = Hole.create(course_id: ragc.id, hole_number: 14, yardage: 350, par: 4)
hole15 = Hole.create(course_id: ragc.id, hole_number: 15, yardage: 350, par: 4)
hole16 = Hole.create(course_id: ragc.id, hole_number: 16, yardage: 350, par: 4)
hole17 = Hole.create(course_id: ragc.id, hole_number: 17, yardage: 350, par: 4)
hole18 = Hole.create(course_id: ragc.id, hole_number: 18, yardage: 350, par: 4)

scorecard1 = Scorecard.create(player_id: aiden.id, course_id: ragc.id)