User.create!(name:  "Example User")

99.times do |n|
  name  = Faker::Name.name
  User.create!(name: name)
end
