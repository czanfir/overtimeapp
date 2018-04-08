User.create(email: 'test@test.com', password: 'testtest', first_name: 'First', last_name: 'Last')

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user: User.first)
end

puts "100 Posts have been created"