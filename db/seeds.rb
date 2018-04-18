User.create(email: 'test@test.com', password: 'testtest', first_name: 'First', last_name: 'Last')
puts "1 User created"

AdminUser.create(email: "admin@test.com", password: "testtest", password_confirmation: "testtest", first_name: "Admin", last_name: "Name")
puts "1 Admin User created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user: User.first)
end

puts "100 Posts have been created"