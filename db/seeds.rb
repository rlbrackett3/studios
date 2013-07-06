require 'ffaker'
require 'database_cleaner'

puts 'EMPTY THE MONGODB DATABASE'
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.orm = "mongoid"
DatabaseCleaner.clean

puts 'SETTING UP ADMIN USER'
user = User.create  email:                  "admin@example.com",
                    password:               "foobar123",
                    password_confirmation:  "foobar123",
                    role:                   "instructor"

puts "SETTING UP ADMIN USER PROFILE"
user.profile.update_attributes  fname:        "Robert",
                                lname:        "Brackett",
                                bio:          "#{Faker::Lorem.paragraph}\n\n#{Faker::Lorem.paragraph}\n\n#{Faker::Lorem.paragraph}",
                                tel:          2173770035,
                                school:       "Pratt Institute UG School of Architecture",
                                website:      "http://www.digitalnouveau.com",
                                portfolio:    "http://www.miscproj.com",
                                blog:         "http://learn.digitalnouveau.com",
                                twitter_url:  "http://www.twitter.com/digitalnouveau",
                                facebook_url: "http://www.facebook.com/robert.lee.brackett3",
                                google_url:   "http://plus.google.com/digital.nouveau",
                                linkdin_url:  "http://www.linkdin.com/robert.lee.brackett3"
user.save!
puts "Admin user #{user.full_name} created!"

puts "SETTING UP A BLANK STUDENT"
s1 = User.create  email:                  "student01@example.com",
                  password:               "foobar123",
                  password_confirmation:  "foobar123",
                  role:                   "student"
s1.save!
puts "Blank Student #{s1.email} created successfully!"

puts "SETTING UP A FULL STUDENT"
s2 = User.create  email:                  "student02@example.com",
                  password:               "foobar123",
                  password_confirmation:  "foobar123",
                  role:                   "student"

puts "SETTING UP FULL STUDENT USER PROFILE"
s2.profile.update_attributes  fname:          Faker::Name.first_name,
                              lname:          Faker::Name.last_name,
                              bio:            "#{Faker::Lorem.paragraph}\n\n#{Faker::Lorem.paragraph}\n\n#{Faker::Lorem.paragraph}",
                              tel:            Faker::PhoneNumber.phone_number,
                              school:         "Pratt Institute UG School of Architecture",
                              website:        "http://www.#{Faker::Internet.domain_name}",
                              portfolio:      "http://www.#{Faker::Internet.domain_name}",
                              blog:           "http://www.#{Faker::Internet.domain_name}",
                              twitter_url:    "http://www.twitter.com",
                              facebook_url:   "http://www.facebook.com",
                              google_url:     "http://plus.google.com",
                              linkdin_url:    "http://www.linkdin.com"
s2.save!
puts "Full Student #{s2.email} created successfully!"