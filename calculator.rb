
def first_number(answer = 'b')
	if answer == 'b'
		puts "Enter your first number:"
		user_input1 = gets.strip
	else
		user_input1 = answer
	end
	validate_one(user_input1)
end

def validate_one(num1)
	same = num1.to_f.to_s
	if same == num1
		modifier(num1.to_f)
	else
		puts "User input error. Please use this syntax: 3.0 !!!"
		first_number
	end
end

def modifier(num1)
	puts "Enter your operator"
	user_input2 = gets.chomp.to_s
	validate_op(num1, user_input2)
end

def validate_op(num1, oper)
	valid = ['+', '-', '*', '/']
	if valid.include?(oper)
		second_number(num1, oper)
	else
		puts "User input error. I only support operators +, -, *, /. Please try again."
		modifier(num1)
	end
end

def second_number(num1, oper)
	puts "Enter your second number:"
	user_input3 = gets.strip
	validate_two(num1, oper, user_input3)
end

def validate_two(num1, oper, num2)
	same = num2.to_f.to_s
	if same == num2
		calculation(num1, oper, num2.to_f) 
	else
		puts "User input error. Please use a number."
		second_number(num1, oper)
	end
end

def calculation(num1, oper, num2)
	if oper == '+'
		output = num1 + num2
	elsif oper == '-'
		output = num1 - num2
	elsif oper == '*'
		output = num1 * num2
	elsif oper == '/'
		output = num1 / num2
	else 
		puts "User input error. I only support operators +, -, *, /. Please try again"
	end
	array = [num1, oper, num2, output]
	result(array)
end

def result(array)
	puts "#{array[0]} #{array[1]} #{array[2]} = #{array[3]}"
	repeat(array[3].to_f.to_s)
end

def repeat(answer)
	puts "Q to quit, N for new calculation, or Enter to continue with existing calculation"
	repeat = gets.strip.downcase.to_s
	if repeat == "n"
		first_number
	elsif repeat == "q"
		puts "Have a nice day!"
	else
		puts answer
		first_number(answer)
	end
end

puts "Welcome to the Ruby Calculator"
first_number




# first_number
# operator
# second_number
# result






#string
#history

# menu

# Do all the bonus problems 