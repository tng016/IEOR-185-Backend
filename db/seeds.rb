# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [ {name: "Wen Jun Seow", title: "Master Tutor", description: "Hello! I'm Wen Jun, a 3rd year studying Math. When I'm not busy with school, I'm probably hiking to enjoy some cool view. Stats 70 was one of my favorite classes and I'm gonna make sure it's one of yours too.", prof_pic: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAwEAAAAJGEzZDU2ZDI4LThhNzMtNDExNS1hOGRmLWFiNTNhODkwZWRiYQ.jpg", rating:5},
          {name: "Ng Tze Yang", title: "Grand Master Tutor", description: "ML is the key to the future", prof_pic: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAs3AAAAJDdmYWU1NTk5LTVhMDMtNDU4Yy05MTY0LTFlZjAyYTZjNTc1NQ.jpg", rating:4},
          {name: "Courtney Williams", title: "Novice Tutor", description: "Coding since 1994", prof_pic: "https://www.swissinfo.ch/blob/42390484/57ab7d6b67a49c4e28fee04d4589c009/profile-image-veronica-devore-data.png", rating:4}
        ]

users.each do |user|
  User.init(user)
end

posts = [ {user_id: 1, image: "https://static1.squarespace.com/static/557ca09ae4b03871291321dc/t/56886d370e4c11c9349b1dc7/1451781544844/academics.png?format=1500w", price: 30, rating:5, subject:"Math Statistics 70A consultation", description:"Used to be a GSI for Statistics 70 and looking to earn some spare cash. Available to meet anytime on Tuesdays & Thursdays anywhere on campus.",category: "Academics"},
          {user_id: 2, image: "https://fthmb.tqn.com/e2z3O8I2sYJctP8uBt1TwEgnQzQ=/2122x1415/filters:fill(auto,1)/Studying-56a945f83df78cf772a55e31.jpg", price: 40, rating:4, subject:"Machine Learning Crash Course", description:"Need some help for the hardest CS course in Cal? Available to meet in the afternoon on Monday,Tuesdays & Thursdays at Unit 1.",category: "Academics"},
          {user_id: 3, image: "https://i0.wp.com/www.oxbridgeacademy.edu.za/blog/wp-content/uploads/2015/07/CN63QSUO8C.jpg?resize=1280%2C640&ssl=1", price: 30, rating:4, subject:"CS 61B tutoring", description:"Code your way to an A! Location and Timing Flexible",category: "Academics"},
          {user_id: 1, image: "https://recsports.berkeley.edu/wp-content/uploads/2016/06/Schedules-Lap-Swim.jpg", price: 50, rating:5, subject:"Beginner Swimming Lessons", description:"Learn how to be the next Michael Phelps from a varsity swimmer! Fun guranteed (:",category: "Sports"},
          {user_id: 2, image: "https://www.bleedingcool.com/wp-content/uploads/2011/11/animal-drumming.jpg", price: 35, rating:4, subject:"Learn to Drum", description:"Ever wanted to learn to Jam to destress from work?",category: "Music"},
          {user_id: 3, image: "https://cdn.jamieoliver.com/news-and-features/features/wp-content/uploads/sites/2/2016/10/piping_coolcakes-1024x683.jpg", price: 30, rating:4, subject:"Baking Lessons!", description:"Sugar, Spice and Everything Nice! Ingredients provided!",category: "Miscellaneous"},
          {user_id: 3, image: "https://agc.creativelive.com/agc/pages/channel-hero/Photo_Hero_1600x900.jpg", price: 30, rating:4, subject:"Photography with Cal photographic society", description:"Learn from the best on campus. Bring your own camera",category: "Interests"}
        ]

posts.each do |post|
  Post.init(post)
end

qualifications = [ {post_id: 3, title: "GSI",description: "GSI at CS61B in 2007"},
                  {post_id: 1, title: "A+", description: "Scored A+ in Statistics 70A"},
                  {post_id: 2, title: "Experience", description: "Founder of my own ML startup"}]

qualifications.each do |q|
  Qualification.init(q)
end

appointments = [ {post_id: 1, user_id: 2, start_time: "2017-12-12 12:12:12",end_time: "2017-12-12 13:12:12",location: "Cory Hall"}]

appointments.each do |q|
  Appointment.init(q)
end