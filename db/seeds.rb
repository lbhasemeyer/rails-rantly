Rant.delete_all

rant1 = Rant.create!( title: "Rant Numero Uno", body: Faker::Lorem.paragraphs.join("\n\n") )
rant2 = Rant.create!( title: "Rant Numero Dos", body: Faker::Lorem.paragraphs.join("\n\n") )
rant3 = Rant.create!( title: "Rant Numero Tres", body: Faker::Lorem.paragraphs.join("\n\n") )
