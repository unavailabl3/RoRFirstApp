User.create!(name:  "Admin",
             email: "admin@mail.ru",
             password:              "admin@mail.ru",
             password_confirmation: "admin@mail.ru",
             admin: true)

User.create!(name:  "Admin",
             email: "nick@mail.ru",
             password:              "nick@mail.ru",
             password_confirmation: "nick@mail.ru",
             admin: false)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end