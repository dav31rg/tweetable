# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create a user
user = User.create(name: "davel", username: "d4v31", email: "davel@mail.com", password: "123456")
anotherUser = User.create(name: "daysi", username: "damli", email: "daysi@mail.com", password: "111111")

# Create tweets
tweet1 = user.tweets.create(body:"chill con los tweets")
tweet2 = user.tweets.create(body:"vao por el segundo tweet")
tweet3 = anotherUser.tweets.create(body:"hola")
tweet4 = anotherUser.tweets.create(body:"como estas")

# Create likes
# user.likes.create(tweet: tweet3)
# user.likes.create(tweet: tweet4)

# Tweet.update_counters(tweet3.id, likes_count: tweet3.likes.count)
# Tweet.update_counters(tweet4.id, likes_count: tweet4.likes.count)

