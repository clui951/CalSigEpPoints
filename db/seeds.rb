# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

organization = Organization.create(name: 'The Rails Train')

users = User.create([{ name: 'Calvin', organization: organization.id }, 
					{ name: 'Claire', organization: organization.id }, 
					{ name: 'Mei', organization: organization.id }, 
					{ name: 'Stevie', organization: organization.id }])

tasks = Task.create([{ title: 'Rode the Rails Train', comment: 'Choo Choo', value: 10, user_id: users[0] }, 
			{ title: 'Rode the Rails Train', comment: 'Choo Choo', value: 10, user_id: users[1] },
			{ title: 'Rode the Rails Train', comment: 'Choo Choo', value: 10, user_id: users[2] },
			{ title: 'Rode the Rails Train', comment: 'Choo Choo', value: 10, user_id: users[3] },
			{ title: 'Tabled for the Rails Train', comment: 'Chugga Chugga', value: 15, user_id: users[0] },
			{ title: 'Bought train food', comment: 'Nom Nom Nom', value: 10, user_id: users[0] }])

%w(Soap Ketchup Mustard Beer).each do |item|
  Reimbursement.create item: item, date: '4/25/2015', cost: rand(1..20), VP: 'Stevie'
end

%w(Fraternity Volunteering).each do |name|
	Organization.create name: name
end

File.open(File.join(Rails.root, 'bieber.jpg'))
%w(Andy Ben Connor Dylan).each do |name|
  Rushname.create name: name, photo: open("bieber.jpg"), email: name+"@yahoo.com", phone: "(555) 555-5555", description: "Cool dude!"
end
