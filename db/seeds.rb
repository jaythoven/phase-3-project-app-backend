# require 'time'

# t1 = Time.parse("2022-11-16 14:40:34")
# t2 = Time.parse("2006-11-20 16:20:23")
# randtime = rand(t1..t2)

# def time_rand from = 0.0, to = Time.now
#   Time.at(from + rand * (to.to_f - from.to_f))
# end

puts "🌱 Seeding spices..."
Event.destroy_all
Venue.destroy_all
Artist.destroy_all

puts "Seeding artists..."
Artist.create(artist_name: "Kanye West", image: "https://upload.wikimedia.org/wikipedia/commons/1/10/Kanye_West_at_the_2009_Tribeca_Film_Festival_%28cropped%29.jpg", id: 1)
Artist.create(artist_name: "Nas", image: "https://upload.wikimedia.org/wikipedia/commons/1/18/Nas_July_2014_%28cropped%29.jpg", id: 2)
Artist.create(artist_name: "Blake Shelton", image: "https://upload.wikimedia.org/wikipedia/commons/a/a2/Blake_Shelton_July_2017_%28cropped%29.jpg", id: 3)
Artist.create(artist_name: "Jay-Z", image: "https://upload.wikimedia.org/wikipedia/commons/9/9c/Jay-Z_%40_Shawn_%27Jay-Z%27_Carter_Foundation_Carnival_%28crop_2%29.jpg", id: 4)
Artist.create(artist_name: "Bad Bunny", image: "https://upload.wikimedia.org/wikipedia/commons/b/b1/Bad_Bunny_2019_by_Glenn_Francis_%28cropped%29.jpg", id: 5)
Artist.create(artist_name: "Carlos Santana", image: "https://upload.wikimedia.org/wikipedia/commons/2/2c/Santana_Acer_Arena_%285558151833%29_%28cropped%29.jpg", id: 6)
Artist.create(artist_name: "Young Thug", image: "https://upload.wikimedia.org/wikipedia/commons/9/90/Young_Thug_-_Openair_Frauenfeld_2019_20.jpg", id: 7)
Artist.create(artist_name: "Miley Cyrus", image: "https://upload.wikimedia.org/wikipedia/commons/5/52/Miley_Cyrus_Primavera19_-226_%2848986293772%29_%28cropped%29.jpg", id: 8)
Artist.create(artist_name: "Britney Spears", image: "https://upload.wikimedia.org/wikipedia/commons/d/da/Britney_Spears_2013_%28Straighten_Crop%29.jpg", id: 9)
Artist.create(artist_name: "Backstreet Boys", image: "https://upload.wikimedia.org/wikipedia/commons/9/9a/Backstreet_Boys_2019_by_Glenn_Francis.jpg", id: 10)
Artist.create(artist_name: "Pharrell Williams", image: "https://upload.wikimedia.org/wikipedia/commons/f/f4/Pharrell_Williams_at_The_Lion_King_European_Premiere_2019.png", id: 11)
Artist.create(artist_name: "Outkast", image: "https://upload.wikimedia.org/wikipedia/commons/c/c5/OutKast_2001.jpg", id: 12)
Artist.create(artist_name: "Paramore", image: "https://upload.wikimedia.org/wikipedia/commons/3/37/Paramore_-_The_O2_-_Friday_12th_January_2018_DSC03984ParamoreO2Jan18_%2825112969047%29.jpg", id: 13)
Artist.create(artist_name: "Weezer", image: "https://upload.wikimedia.org/wikipedia/commons/f/f6/Weezer_Bethlehem_2019_1.jpg", id: 14)
Artist.create(artist_name: "J Balvin", image: "https://upload.wikimedia.org/wikipedia/commons/c/ce/J_Balvin_2013.jpg", id: 15)

puts "Seeding venues..."
Venue.create(venue_name: "Madison Square Garden", location: "New York, NY", image: "https://upload.wikimedia.org/wikipedia/commons/d/dc/Madison_Square_Garden%2C_February_2013.jpg", id: 1)
Venue.create(venue_name: "Barclays Center", location: "Brooklyn, NY", image: "https://upload.wikimedia.org/wikipedia/commons/5/55/Barclays_Center_western_side.jpg", id: 2)
Venue.create(venue_name: "Crypto.com Arena", location: "Los Angeles, CA", image: "https://upload.wikimedia.org/wikipedia/commons/1/10/Staplescenter.jpg", id: 3)
Venue.create(venue_name: "T-Mobile Arena", location: "Paradise, NV", image: "https://upload.wikimedia.org/wikipedia/commons/8/85/T-Mobile_Arena_Outside.jpg", id: 4)
Venue.create(venue_name: "TD Garden", location: "Boston, MA", image: "https://upload.wikimedia.org/wikipedia/commons/6/6a/TD_Garden_%28crop%29.JPG", id: 5)
Venue.create(venue_name: "Amway Center", location: "Orlando, FL", image: "https://upload.wikimedia.org/wikipedia/commons/9/9f/Amway_Center.jpg", id: 6)

puts "Seeding events..."
Event.create(event_name: "VooDoo Fest", date: "06/25/2022", time: "08:00 PM", artist_id: 12,venue_id: 6)
Event.create(event_name: "VooDoo Fest", date: "06/25/2022", time: "08:00 PM", artist_id: 8,venue_id: 6)
Event.create(event_name: "VooDoo Fest", date: "06/25/2022", time: "08:00 PM", artist_id: 3,venue_id: 6)
Event.create(event_name: "VooDoo Fest", date: "06/25/2022", time: "08:00 PM", artist_id: 1,venue_id: 6)
Event.create(event_name: "VooDoo Fest", date: "06/25/2022", time: "08:00 PM", artist_id: 7,venue_id: 6)
Event.create(event_name: "Life is Beautiful Festival", date: "06/25/2022", time: "08:00 PM", artist_id: 12,venue_id: 3)
Event.create(event_name: "Life is Beautiful Festival", date: "06/25/2022", time: "08:00 PM", artist_id: 11,venue_id: 3)
Event.create(event_name: "Life is Beautiful Festival", date: "06/25/2022", time: "08:00 PM", artist_id: 9,venue_id: 3)
Event.create(event_name: "Life is Beautiful Festival", date: "06/25/2022", time: "08:00 PM", artist_id: 3,venue_id: 3)
Event.create(event_name: "(You Drive Me) Crazy Tour", date: "06/25/2022", time: "08:00 PM", artist_id: 9, venue_id: 1)



puts "✅ Done seeding!"
