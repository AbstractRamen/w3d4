# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.transaction do

User.destroy_all
usera = User.create!(username: 'a')
userb = User.create!(username: 'b')
userc = User.create!(username: 'c')

Poll.destroy_all
poll1 = Poll.create!(title: 'Title1', user_id: usera.id)
poll2 = Poll.create!(title: 'Title2', user_id: userb.id)
poll3 = Poll.create!(title: 'Title3', user_id: userc.id)

Question.destroy_all
questiona = Question.create!(poll_id: poll1.id, text: 'ABC')
questionb = Question.create!(poll_id: poll2.id, text: 'DEF')
questionc = Question.create!(poll_id: poll3.id, text: 'GHI')

AnswerChoice.destroy_all
choice1 = AnswerChoice.create!(text: 'OtherText1', question_id: questiona.id)
choice2 = AnswerChoice.create!(text: 'OtherText2', question_id: questionb.id)
choice3 = AnswerChoice.create!(text: 'OtherText3', question_id: questionc.id)

Response.destroy_all
responsea = Response.create!(user_id: usera.id, answer_choice_id: choice1.id)
responseb = Response.create!(user_id: userb.id, answer_choice_id: choice2.id)
responsec = Response.create!(user_id: userc.id, answer_choice_id: choice3.id)

end
