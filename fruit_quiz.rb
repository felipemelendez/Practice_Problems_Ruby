class Question
	attr_accessor :prompt, :answer
	def initialize(prompt, answer)
		@prompt = prompt
		@answer = answer
	end
end

p1 = "What color are apples?\n(a)red\n(b)black\n(c)blue"
p2 = "What color are bananas?\n(a)pink\n(b)black\n(c)yellow"
p3 = "What color is the sky?\n(a)pink\n(b)blue\n(c)yellow"

my_questions = [
	Question.new(p1, "a"),
	Question.new(p2, "c"),
  Question.new(p3, "b")
]

def run_test(my_questions)
	answer = ""
	score = 0
	for question in my_questions
		puts question.prompt
		answer = gets.chomp()
		if answer == question.answer
			score += 1
		end
	end
	puts ("You got " + score.to_s + "/" + my_questions.length().to_s)
end
