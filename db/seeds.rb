User.create(email: 'test@test.com', password: 'testtest', first_name: 'First', last_name: 'Last', phone: '6622009959 ')
puts "1 User created"

AdminUser.create(email: "admin@test.com", password: "testtest", password_confirmation: "testtest", first_name: "Admin", last_name: "Name", phone: '6622009959 ')
puts "1 Admin User created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user: User.first, overtime_request: 2.5)
end

puts "100 Posts have been created"

100.times do
  AuditLog.create!(user_id: User.last.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 audit logs have been created"