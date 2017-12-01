User.create!(name:  "admin",
             email: "admin@bm.org",
             password:              "foobar",
             password_confirmation: "foobar",
                          admin: true,
             activated: true,
             activated_at: Time.zone.now)



5.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
  			   activated: true,
               activated_at: Time.zone.now)

users = User.order(:created_at).take(6)
10.times do
  title = Faker::Name.name
  description = Faker::Lorem.sentence(5)
  author = "NA"
  year = "2012"
  review = Faker::Lorem.sentence(5)
  users.each { |user| user.books.create!(title:title, description:description, author:author, year:year, review:review) }
end

end