# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: 'userone', email: 'userone@gmail.com')
User.create(username: 'user2', email: 'user2@gmail.com')
User.create(username: 'user3', email: 'user3@gmail.com')
User.create(username: 'user4', email: 'user4@gmail.com')
User.create(username: 'user5', email: 'user5@gmail.com')

Poll.create(title: 'pt1', user_id: 1)
Poll.create(title: 'pt2', user_id: 2)
Poll.create(title: 'pt3', user_id: 1)
Poll.create(title: 'pt4', user_id: 2)
Poll.create(title: 'pt5', user_id: 3)
Poll.create(title: 'pt6', user_id: 4)

Question.create(question: 'q1', poll_id: 1)
Question.create(question: 'q2', poll_id: 1)
Question.create(question: 'q3', poll_id: 2)
Question.create(question: 'q4', poll_id: 2)
Question.create(question: 'q5', poll_id: 3)
Question.create(question: 'q6', poll_id: 3)
Question.create(question: 'q7', poll_id: 4)
Question.create(question: 'q8', poll_id: 5)
Question.create(question: 'q1', poll_id: 5)
Question.create(question: 'q2', poll_id: 5)
Question.create(question: 'q3', poll_id: 6)
Question.create(question: 'q3', poll_id: 6)

Choice.create(choice: 'ch1', question_id: 1)
Choice.create(choice: 'ch2', question_id: 1)
Choice.create(choice: 'ch3', question_id: 1)
Choice.create(choice: 'ch4', question_id: 1)
Choice.create(choice: 'ch1', question_id: 2)
Choice.create(choice: 'ch2', question_id: 2)
Choice.create(choice: 'ch3', question_id: 2)
Choice.create(choice: 'ch4', question_id: 2)
Choice.create(choice: 'ch1', question_id: 3)
Choice.create(choice: 'ch2', question_id: 3)
Choice.create(choice: 'ch3', question_id: 3)
Choice.create(choice: 'ch4', question_id: 3)
Choice.create(choice: 'ch1', question_id: 4)
Choice.create(choice: 'ch2', question_id: 4)
Choice.create(choice: 'ch3', question_id: 4)
Choice.create(choice: 'ch4', question_id: 4)
Choice.create(choice: 'ch1', question_id: 5)
Choice.create(choice: 'ch2', question_id: 5)
Choice.create(choice: 'ch3', question_id: 5)
Choice.create(choice: 'ch4', question_id: 5)
Choice.create(choice: 'ch1', question_id: 6)
Choice.create(choice: 'ch2', question_id: 6)
Choice.create(choice: 'ch3', question_id: 6)
Choice.create(choice: 'ch4', question_id: 6)
Choice.create(choice: 'ch1', question_id: 7)
Choice.create(choice: 'ch2', question_id: 7)
Choice.create(choice: 'ch3', question_id: 7)
Choice.create(choice: 'ch4', question_id: 7)
Choice.create(choice: 'ch1', question_id: 8)
Choice.create(choice: 'ch2', question_id: 8)
Choice.create(choice: 'ch3', question_id: 8)
Choice.create(choice: 'ch4', question_id: 8)
Choice.create(choice: 'ch1', question_id: 9)
Choice.create(choice: 'ch2', question_id: 9)
Choice.create(choice: 'ch3', question_id: 9)
Choice.create(choice: 'ch4', question_id: 9)
Response.create(user_id: 1, choice_id: 2)

end


