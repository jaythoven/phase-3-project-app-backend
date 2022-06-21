puts "🌱 Seeding spices..."
Show.destroy_all
Venue.destroy_all
Artist.destroy_all

puts "Seeding artists..."
Artist.create(name: "Kanye West", id: 1)
Artist.create(name: "Nas", id: 2)
Artist.create(name: "Blake Shelton", id: 3)
Artist.create(name: "Jay-Z", id: 4)
Artist.create(name: "Bad Bunny", id: 5)
Artist.create(name: "Carlos Santana", id: 6)
Artist.create(name: "Young Thug", id: 7)
Artist.create(name: "Miley Cyrus", id: 8)
Artist.create(name: "Britney Spears", id: 9)
Artist.create(name: "Backstreet Boys", id: 10)
Artist.create(name: "Pharrell Williams", id: 11)
Artist.create(name: "Outkast", id: 12)
Artist.create(name: "Paramore", id: 13)
Artist.create(name: "Weezer", id: 14)
Artist.create(name: "J Balvin", id: 15)

puts "Seeding venues..."
Venue.create(name: "Madison Square Garden", location: "New York, NY", id: 1)
Venue.create(name: "Barclays Center", location: "Brooklyn, NY", id: 2)
Venue.create(name: "Crypto.com Arena", location: "Los Angeles, CA", id: 3)
Venue.create(name: "T-Mobile Arena", location: "Paradise, NV", id: 4)
Venue.create(name: "TD Garden", location: "Boston, MA", id: 5)
Venue.create(name: "Amway Center", location: "Orlando, FL", id: 6)

puts "Seeding shows..."


puts "✅ Done seeding!"
