User.create!(name: "Sara Mellott",
             email: "sara@test.com",
             password: "foobar",
             password_confirmation: "foobar",
             admin: true)
User.create!(name: "Will Westin",
             email: "will@test.com",
             password: "foobar",
             password_confirmation: "foobar")
users = User.order(:created_at).take(2)
50.times do
  information = "This is a test post"
  title = "Title Test"
  users.each { |user| user.tasks.create!(information: information, title: title) }
end
TaskType.create!(type: "Work Task")
TaskType.create!(type: "Personal Task")
TaskType.create!(type: "Other")
