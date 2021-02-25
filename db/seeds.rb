# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
courses = [{:prefix => 'CSCI', :name => 'Easy Course', :number => '100', :section => '01'},
    	 {:prefix => 'CSCI', :name => 'Hard Course', :number => '200', :section => '01'},
    	 {:prefix => 'CSCI', :name => 'Medium Course', :number => '300', :section => '01'},
    	 {:prefix => 'CSCI', :name => 'Very Hard Course', :number => '400', :section => '01'}

  	 ]
#sdfsfdv
courses.each do |course|
  Course.create!(course)
end 