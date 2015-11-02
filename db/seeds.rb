
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

