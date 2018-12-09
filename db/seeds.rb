# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
WEBPAGES = 5
BOOKARKS_PER_WEBPAGE = 8

if Webpage.count <= WEBPAGES
	WEBPAGES.times do |i|
		Webpage.create(name: "webpage-#{i}")
	end
end
puts "Webpages: #{Webpage.count}"

if Bookmark.count <= BOOKARKS_PER_WEBPAGE * WEBPAGES
	Webpage.all.each do |w|
		BOOKARKS_PER_WEBPAGE.times do |i|
			w.bookmarks.create(name: "Bokkmark-of-webpage-#{w.name}-nr-#{i + 1}")
		end
	end
end
puts "Bookmarks: #{Bookmark.count}"