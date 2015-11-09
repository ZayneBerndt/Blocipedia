
#Create Wikis

10.times do 
  Wiki.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
    )
end 
wiki = Wiki.all

#Create an admin User

admin = User.new(
  name: 'Admin User',
  email: 'admin@example.com',
  password: 'helloworld',
  role: 'admin'
  )

  admin.skip_confirmation!
  admin.save!

# Create a premium member
premium = User.new(
    name:       'Premium User',
    email:      'premium@example.com',
    password:   'helloworld',
    role:       'premium'
)
premium.skip_confirmation!
premium.save!

# Create a standard member
standard = User.new(
    name:       'Standard User',
    email:      'standard@example.com',
    password:   'helloworld',
    role:       'standard'
)
standard.skip_confirmation!
standard.save!

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Wiki.count} wikis created"
puts "#{standard.count} standard user created"
puts "#{premium.count} premium user created"
puts "#{admin.count} admin user created"