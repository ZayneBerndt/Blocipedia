
#Create Wikis

10.times do 
  Wiki.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
    )
end 
wiki = Wiki.all
