user_1 = User.create(username:"larry",password:"1234")
user_2 = User.create(username:"curly",password:"1234")
user_3 = User.create(username:"moe",password:"1234")

question = user_1.questions.create(title:"test",body:"test")

comment_1 = question.comments.create(body:"test",commenter_id: 2)
comment_2 = comment_1.comments.create(body:"test",commenter_id: 3)