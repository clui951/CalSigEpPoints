# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Task.create(title: 'Gym', comment: 'RSF with Stevie', value: 5)
Task.create(title: 'Wash dishes', comment: 'Wednesday dinner', value: 10)
Task.create(title: 'Clean bathroom', comment: 'gross', value: 50)


%w(Soap Ketchup Mustard Beer).each do |item|
  Reimbursement.create item: item, date: '4/25/2015', cost: rand(1..20), VP: 'Stevie'
end

File.open(File.join(Rails.root, 'bieber.jpg'))
%w(Andy Ben Connor Dylan).each do |name|
  Rushname.create name: name, photo: open("bieber.jpg"), email: name+"@yahoo.com", phone: "(555) 555-5555", description: "Cool dude!"
end
