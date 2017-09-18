10.times do |n|
  email = Faker::Internet.email
  name = Faker::Name.name
  password = "password"
  uid = SecureRandom.uuid
  user = User.create!(
                      email: email,
                      name: name,
                      password: password,
                      password_confirmation: password,
                      uid: uid
  )
  user.skip_confirmation!
  user.save

  topic = Topic.create!(
                       title: "トピックタイトル入力テスト",
                       content: "トピック内容入力テスト",
                       user_id: user.id
  )

  Comment.create(
                content: "コメント入力テスト",
                topic_id: topic.id,
                user_id: user.id
  )
end