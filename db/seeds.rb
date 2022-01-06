# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

op = Post.create(body: "How much wood could a woodchuck chuck if a woodchuck could chuck wood?")
chuck1 = Post.create(parent_id: op.id, body: "What do you mean by 'chuck'? Not sure why a bird WANTS to be tossing wood.")
Post.create(parent_id: chuck1.id, body: "It's the annual avian stick throwing contest, each bird needs to toss a twig weighing 8-12oz.")
Post.create(parent_id: chuck1.id, body: "Woodchuck chucking is the best.")
Post.create(parent_id: op.id, body: "I'm not sure how to respond to this question.")
Post.create(parent_id: op.id, body: "Four.")
chuck4 = Post.create(parent_id: op.id, body: "I think OP should chuck their own wood and leave the poor birds alone.")
Post.create(parent_id: chuck4.id, body: "But woodchucks do chuck wood, and love it")
Post.create(parent_id: chuck4.id, body: "Stop projecting and anthropomorphizing, you despicable wood chucker.")
