# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
include Faker

100.times do 

  Chef.create({chefname:"#{Name.name}",email:"#{Internet.email}", password:"#{Internet.password}"})

  Recipe.create({name:"#{Lorem.characters(5)}", summary:"#{Lorem.sentence(4)}", 
                 description:"#{Lorem.sentence(10)}", 
                 chef_id:rand(1..Chef.all.count)})
                   
end