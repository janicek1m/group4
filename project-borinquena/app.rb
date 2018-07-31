quiz = Quiz.new(1, "Are you interested in helping Puerto Rico?")
 
question_1 = Question.new(:id => "Q1", :text => "Would you like to Donate?", :answers => {
    "Yes" => "R2",
    "No" => "Q2"
})
quiz.add_question(question_1)
quiz.questions #=> [#<Question @id="Q1">]
 
question_2 = Question.new(:id => "Q2", :text => "Do you think Medicine or Education is more important?", :answers => {
	"Yes" => "R2",
    "No" => "Q2"
})
quiz.add_question(question_2)
quiz.questions #=> [#<Question @id="Q2">]






yes_result = Result.new(:id => "R1", :text => "Yes, go out.")
no_result = Result.new(:id => "R2", :text => "No, don't go out.")
quiz.add_result(yes_result)
quiz.add_result(no_result)
quiz.results #=> [#<Result @id="R1">, #<Result @id="R2">]