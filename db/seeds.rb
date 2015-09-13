user_1 = User.create(username:"larry",password:"1234")
user_2 = User.create(username:"curly",password:"1234")
user_3 = User.create(username:"moe",password:"1234")

10.times do
	question = user_1.questions.create(title: Faker::Hacker.noun, body: Faker::Hacker.say_something_smart)
	answer1 = question.comments.create(body: Faker::Hacker.say_something_smart, commenter_id: 1, is_answer: true)
	answer2 = question.comments.create(body: Faker::Hacker.say_something_smart, commenter_id: 3, is_answer: true)
	3.times do
		comment = question.comments.create(body: Faker::Hacker.say_something_smart,commenter_id: 2)
	end
end

# comment_1 = question.comments.create(body:"test",commenter_id: 2)
# comment_2 = comment_1.comments.create(body:"test",commenter_id: 3)