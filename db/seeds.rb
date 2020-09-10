User.create!(name: "Sara Mellott",
             email: "sara@test.com",
             password: "foobar",
             password_confirmation: "foobar",
             admin: true)
User.create!(name: "Will Westin",
             email: "will@test.com",
             password: "foobar",
             password_confirmation: "foobar")
Task.create!(user_id: "1",
             title: "Test Task",
             information: "This is general test information")
