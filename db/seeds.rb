# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cardset.delete_all
Card.delete_all

Cardset.create(
  title: "Math"
)

Cardset.create(
  title: "Science"
)

Cardset.create(
  title: "Spanish"
)

Cardset.first.cards.create(
  question: "What is 1 + 1" ,
  answer: "2",
)

Cardset.find_by(title:"Science").cards.create(
question: "What is a black hole",
answer: "it is under investigation"
)


Cardset.find_by(title:"Spanish").cards.create(
question: "What is cheese in Spanish?",
answer: "Queso"
)
