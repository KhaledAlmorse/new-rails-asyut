# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# Create Users
user1 = User.create!(name: "Alice", email: "alice@example.com")
user2 = User.create!(name: "Bob", email: "bob@example.com")

# Create Posts
post1 = Post.create!(title: "First Post", content: "Hello World", user: user1)
post2 = Post.create!(title: "Second Post", content: "Rails is awesome", user: user1)
post3 = Post.create!(title: "Third Post", content: "Learning Ruby", user: user2)

# Create Editors
editor1 = Editor.create!(name: "Charlie", email: "charlie@example.com")
editor2 = Editor.create!(name: "Diana", email: "diana@example.com")

# Create Post-Editor relationships
PostEditor.create!(post: post1, editor: editor1)
PostEditor.create!(post: post1, editor: editor2)
PostEditor.create!(post: post2, editor: editor1)
