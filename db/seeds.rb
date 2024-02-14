# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(email: "admin@example.com", name: "Admin", password: "asdf123456", password_confirmation: "asdf123456")
User.create(email: "jhon@doe.com", name: "Jhon", password: "asdf123456", password_confirmation: "asdf123456")

10.times do |x|
    Post.find_or_create_by(title: "Title #{x}", body: "Words #{x} I dont know", user_id: User.first.id)
end