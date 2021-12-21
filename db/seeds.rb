# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(username: "James", password_digest: "1234")
project = Project.create(title: "ToDo app", due_date: "12/23/2021", read_me: "An app to track what projects you're working on and keep track of tasks still do to/add new tasks and notes when away from the computer", user: User.find_by(id: 1))