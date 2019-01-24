User.create!(name:  "Admin",
             email: "admin@mail.ru",
             password:              "admin@mail.ru",
             password_confirmation: "admin@mail.ru",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

User.create!(name:  "Admin",
             email: "nick@mail.ru",
             password:              "nick@mail.ru",
             password_confirmation: "nick@mail.ru",
             admin: false,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.textposts.create!(content: content) }
end