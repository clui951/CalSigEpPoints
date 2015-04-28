# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

organization = Organization.create( name: 'The Rails Train' )

users = User.create([{ name: 'Calvin', organization: organization },
					{ name: 'Claire', organization: organization },
					{ name: 'Mei', organization: organization },
					{ name: 'Stevie', organization: organization }])

tasks = Task.create([{ title: 'Rode the Rails Train', comment: 'Choo Choo', value: 10, user: users[0] },
			{ title: 'Rode the Rails Train', comment: 'Choo Choo', value: 10, user: users[1] },
			{ title: 'Rode the Rails Train', comment: 'Choo Choo', value: 10, user: users[2] },
			{ title: 'Rode the Rails Train', comment: 'Choo Choo', value: 10, user: users[3] },
			{ title: 'Tabled for the Rails Train', comment: 'Chugga Chugga', value: 15, user: users[0] },
			{ title: 'Bought train food', comment: 'Nom Nom Nom', value: 10, user: users[0] }])

frat = Organization.create( name: "Fraternity")
%w(Soap Ketchup Mustard Beer).each do |item|
  Reimbursement.create item: item, date: '4/25/2015', cost: rand(1..20), VP: 'Stevie', organization: frat, user: User.last
end


volun = Organization.create( name: "Volunteering")
File.open(File.join(Rails.root, 'bieber.jpg'))
%w(Andy Ben Connor Dylan).each do |name|
  Rushname.create name: name, photo: open("bieber.jpg"), email: name+"@yahoo.com", phone: "(555) 555-5555", description: "Cool dude!", organization: volun
end
