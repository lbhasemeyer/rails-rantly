Rant.delete_all
User.delete_all

user1 = User.create!( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password" )
user2 = User.create!( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password" )
user3 = User.create!( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password" )
user4 = User.create!( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password" )
user5 = User.create!( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password" )
user6 = User.create!( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password" )
user7 = User.create!( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password" )
user8 = User.create!( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password" )
user9 = User.create!( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password" )
user10 = User.create!( first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "password", password_confirmation: "password" )


rant1 = Rant.create!(
title: "Danger",
body: "The following animals kill more people yearly than sharks: mosquitos, hippos, deer, bees, dogs, ants, jellyfish, cows, horses, spiders, and rattlesnakes.The following animals kill more people yearly than sharks: mosquitos, hippos, deer, bees, dogs, ants, jellyfish, cows, horses, spiders, and rattlesnakes.The following animals kill more people yearly than sharks: mosquitos, hippos, deer, bees, dogs, ants, jellyfish, cows, horses, spiders, and rattlesnakes.",
user: user1
)

rant2 = Rant.create!(
title: "Small Kangaroo",
body: "A sloth was robbed by a turtle.  When asked to describe the event, he could only reply 'I don't know...it all happened so fast...'A sloth was robbed by a turtle.  When asked to describe the event, he could only reply 'I don't know...it all happened so fast...'A sloth was robbed by a turtle.  When asked to describe the event, he could only reply 'I don't know...it all happened so fast...'A sloth was robbed by a turtle.  When asked to describe the event, he could only reply 'I don't know...it all happened so fast...'",
user: user2
)

rant3 = Rant.create!(
title: "Haiku",
body: "A growling attack, Darting eyes see Chipotle, She must be hungry.A growling attack, Darting eyes see Chipotle, She must be hungry.A growling attack, Darting eyes see Chipotle, She must be hungry.A growling attack, Darting eyes see Chipotle, She must be hungry.A growling attack, Darting eyes see Chipotle, She must be hungry.A growling attack, Darting eyes see Chipotle, She must be hungry.A growling attack, Darting eyes see Chipotle, She must be hungry.A growling attack, Darting eyes see Chipotle, She must be hungry.A growling attack, Darting eyes see Chipotle, She must be hungry.",
user: user1
)
