require 'faker'

User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::DcComics.hero)
User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::DcComics.hero)
User.create(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::DcComics.hero)

Goal.create(title: Faker::DcComics.title, status: Faker::Job.employment_type, motivation: Faker::Job.position, description: Faker::Lorem.paragraph, estimated_completion_date: Faker::Date.forward(days: 100))
Goal.create(title: Faker::DcComics.title, status: Faker::Job.employment_type, motivation: Faker::Job.position, description: Faker::Lorem.paragraph, estimated_completion_date: Faker::Date.forward(days: 100))
Goal.create(title: Faker::DcComics.title, status: Faker::Job.employment_type, motivation: Faker::Job.position, description: Faker::Lorem.paragraph, estimated_completion_date: Faker::Date.forward(days: 100))