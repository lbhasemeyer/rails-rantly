Rant.delete_all
User.delete_all

user1 = User.create!( first_name: "Countess Periwinkle", last_name: "McGhee", email: "countess@email.com", password_digest: "1234" )
user2 = User.create!( first_name: "Couch-Lamp", last_name: "Smith", email: "couchlamp@email.com", password_digest: "1234" )
user3 = User.create!( first_name: "Heiress", last_name: "Fairy Brick", email: "heiress@email.com", password_digest: "1234" )

rant1 = Rant.create!(
title: "Danger",
body: "The following animals kill more people yearly than sharks: mosquitos, hippos, deer, bees, dogs, ants, jellyfish, cows, horses, spiders, and rattlesnakes.",
user: user1
)

rant2 = Rant.create!(
title: "Small Kangaroo",
body: "A sloth was robbed by a turtle.  When asked to describe the event, he could only reply 'I don't know...it all happened so fast...'",
user: user2
)

rant3 = Rant.create!(
title: "Haiku",
body: "A growling attack, Darting eyes see Chipotle, She must be hungry.",
user: user1
)
