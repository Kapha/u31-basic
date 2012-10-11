namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(firstname: "Peter",
                         sirname:   "Blomgren",
                         email:     "mr@pablomgren.com",
                         password:  "password",
                         password_confirmation: "password")
    admin.toggle!(:admin)
    User.create!(firstname: "Example",
                 sirname:   "User",
                 email:     "example@railstutorial.org",
                 password:  "foobar",
                 password_confirmation: "foobar")
    99.times do |n|
      firstname = Faker::Name.first_name
      sirname = Faker::Name.last_name
      email = "example-#{n+1}@railstutorial.org"
      password = "password"
      User.create!(firstname: firstname, sirname: sirname, email: email, password: password, password_confirmation: password)
    end
  end
end
