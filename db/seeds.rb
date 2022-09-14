# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Hey guys! I'm going to try and figure out a nicer naming system for the lessons and cards beyong lesson1-card1 etc.
# But for MVP time we're going to stick with this

lesson1 = Lesson.create(title: "Hello World!", points: 50, description: "Welcome to the world of Web3! This is just some stuff to get started")
# lesson = Lesson.create(title: "Lesson 2", points: 20, description: "This is lesson 2")
# lesson = Lesson.create(title: "Lesson 3", points: 30, description: "This is lesson 3")
# lesson = Lesson.create(title: "Lesson 4", points: 40, description: "This is lesson 4")
# lesson = Lesson.create(title: "Lesson 5", points: 50, description: "This is lesson 5")
card1 = Card.create(header: "Web3?", content: "Web3 Content", card_number: "1", lesson_id: lesson1)
card2 = Card.create(header: "Blockchain", content: "Blockchain Content", card_number: "2", lesson_id: lesson1)
card3 = Card.create(header: "Token", content: "Token Content", card_number: "3", lesson_id: lesson1)
card4 = Card.create(header: "Wallet", content: "Wallet Content", card_number: "4", lesson_id: lesson1)
card5 = Card.create(header: "Quiz", content: "Quiz Content", card_number: "5", lesson_id: lesson1)
