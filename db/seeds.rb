# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
2.times do | i |
  parent = Parent.create name: "Parent#{i}"
  5.times do | j |
    Child.create name: "Child#{i * j}", parent: parent
  end
end
