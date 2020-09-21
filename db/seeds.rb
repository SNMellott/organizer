User.create!(name: "Sara Mellott",
             email: "sara@test.com",
             password: "foobar",
             password_confirmation: "foobar",
             admin: true)
User.create!(name: "Will Westin",
             email: "will@test.com",
             password: "foobar",
             password_confirmation: "foobar")
#users = User.order(:created_at).take(2)
#50.times do
#  information = "This is a test post"
#  title = "Title Test"
#  task_type = "1"
#  users.each { |user| user.tasks.create!(information: information, title: title, task_type_id: task_type) }
#end
