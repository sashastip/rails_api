
(1..100).each do |i|
  password = Faker::Internet.password
  user = User.create(email: Faker::Internet.email, 
                     password: password, 
                     password_confirmation: password)
end