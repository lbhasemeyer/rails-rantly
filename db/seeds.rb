Rant.delete_all

rant1 = Rant.create!( title: Faker::Lorem.sentence, body: Faker::Lorem.paragraphs.join("\n\n") )
rant2 = Rant.create!( title: Faker::Lorem.sentence, body: Faker::Lorem.paragraphs.join("\n\n") )
rant3 = Rant.create!( title: Faker::Lorem.sentence, body: Faker::Lorem.paragraphs.join("\n\n") )
