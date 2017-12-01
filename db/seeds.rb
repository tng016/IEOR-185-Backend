# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [ {name: "Nathan Blake", title: "Master Tutor", prof_pic: "https://static1.squarespace.com/static/557ca09ae4b03871291321dc/t/56886d370e4c11c9349b1dc7/1451781544844/academics.png?format=1500w", rating:5},
          {name: "Russell Peters", title: "Grand Master Tutor", prof_pic: "https://ocw.mit.edu/faculty/michael-cuthbert/cuthbert.png", rating:4},
          {name: "Seow Wen Jun", title: "Intermediate Tutor", prof_pic: "https://www.swissinfo.ch/blob/42390484/57ab7d6b67a49c4e28fee04d4589c009/profile-image-veronica-devore-data.png", rating:1}
        ]

users.each do |user|
  User.init(user)
end

posts = [ {user_id: 1, image: "https://static1.squarespace.com/static/557ca09ae4b03871291321dc/t/56886d370e4c11c9349b1dc7/1451781544844/academics.png?format=1500w", price: 30, rating:5, subject:"Math Statistics 70A", description:"Seow Wen Jun Sucks",category: "Academics"},
          {user_id: 2, image: "https://static1.squarespace.com/static/557ca09ae4b03871291321dc/t/56886d370e4c11c9349b1dc7/1451781544844/academics.png?format=1500w", price: 1000, rating:4, subject:"Machine Learning", description:"Seow Wen Jun Sucks Balls",category: "Academics"},
          {user_id: 3, image: "https://static1.squarespace.com/static/557ca09ae4b03871291321dc/t/56886d370e4c11c9349b1dc7/1451781544844/academics.png?format=1500w", price: 10, rating:1, subject:"CS 169", description:"SEOWWWWWWWW",category: "Academics"}
        ]

posts.each do |post|
  Post.init(post)
end

qualifications = [ {post_id: 1, title: "GSI",description: "GSI at CS61B in 2007"},
                  {post_id: 2, title: "A+", description: "Scored A in Maths & Statistics"},
                  {post_id: 3, title: "Experience", description: "Founder of my own startup"}]

qualifications.each do |q|
  Qualification.init(q)
end