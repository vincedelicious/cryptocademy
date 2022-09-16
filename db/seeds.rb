# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Hey guys! I'm going to try and figure out a nicer naming system for the lessons and cards beyong lesson1-card1 etc.
# But for MVP time we're going to stick with this
Lesson.destroy_all

lesson1 = Lesson.create!(title: "Hello World!", points: 50, description: "Welcome to the world of Web3!")
# lesson = Lesson.create(title: "Lesson 2", points: 20, description: "This is lesson 2")
# lesson = Lesson.create(title: "Lesson 3", points: 30, description: "This is lesson 3")
# lesson = Lesson.create(title: "Lesson 4", points: 40, description: "This is lesson 4")
# lesson = Lesson.create(title: "Lesson 5", points: 50, description: "This is lesson 5")

# Card content is quite large and not formatted well, click the toggle arrow to view

card1 = Card.create!(header: "Hello!", content:
  "Welcome to Cryptocademy! In this first lesson we’ll just show you some of the keywords & definitions that you will see around the place.
  We’ll go into more detail for each concept so don’t worry too much about memorising every word",
  card_number: "1", lesson: lesson1)
card2 = Card.create!(header: "Blockchain", content:
  "Imagine a ledger or logbook that keeps a record of transactions. Now imagine if that ledger was on the internet and being looked at by billions of people & computers.
  Everyone looking at this ledger has a copy of it, and every time there is a new transaction, everyone checks to make sure that everyone else got that same transaction and no one is writing down some funny business.
  That is essentially a blockchain! It’s a shared & distributed record (chain) of transactions  (blocks) that are being monitored & agreed upon by so many computers that it is essentially impossible to hack or defraud.
  Blockchain is the technology that makes Web3 possible!",
  card_number: "2", lesson: lesson1)
card3 = Card.create!(header: "Web3", content:
  "Web1 was roughly the first version of the internet where you could access pages that displayed info
  Web2 was when users could upload info like videos, blogs & posts to sites - this is where most of the internet today is!
  Web3 is what we think is the next version of the internet that exists on blockchains and is more decentralised & involves tokens.
  These ‘versions’ don’t have updates to run or destroy old versions of sites, it’s just a kind of lens to view the internet and what sort of things its users are getting up to.
  Web1: Read 📖 |
  Web2: Read-Write 📖 🖊️ |
  Web3: Read-Write-Own 📖 🖊️ 🔑",
  card_number: "3", lesson: lesson1)
card4 = Card.create!(header: "Tokens", content:
  "Coins in your pocket are things you can exchange for snacks and coffee, but you can’t (or shouldn’t) eat them!
  We will definitely go more into detail, but for now think of Tokens as coins that live on the blockchain and can be exchanged for stuff.
  The value of a Token is determined by many things, but it’s important to note that not all Tokens are the same, and anyone can make a Token!
  Common Tokens you may have heard of could be Bitcoin, Ether or Doge Coin
  ", card_number: "4", lesson: lesson1)
card5 = Card.create!(header: "Wallets", content:
  "A Wallet in the Web3 sense is a thing that stores information about what you own on the blockchain.
  It is made up of two things: An ‘address’ and a ‘private key’
  More details in a later lesson, but just know for now that the address is public information, but your private key must never be shared with anyone!
  Anyone who has the private key can access all the contents of your wallet and do whatever they like with it, like if their hand could reach right into your physical wallet and take whatever they like!
  ", card_number: "5", lesson: lesson1)
card6 = Card.create!(header: "Quiz", content:
  "A ledger is like…
  Bitcoin is an example of a…
  Which of these two should you never give out to anyone or store digitally in a screenshot/photo etc.:",
  card_number: "6", lesson: lesson1)
card7 = Card.create!(header: "Congrats!", content:
  "Nice! You’ve picked up some of the keywords to know in this crypto/Web3 space!
  We will go through all of them in greater detail in the next set of lessons",
  card_number: "7", lesson: lesson1)
