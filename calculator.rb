# create / edit a file
# stage the file - git add
# make a commit
# push to a github repo
# def menu 
# 	puts "welcome to the Ruby Calculator"
# 	puts "Enter your first number:"
# 	user_input1 = gets.to_f
# 	puts "Enter your operator"
# 	user_input2 = gets.chomp
# 	puts "Enter your second number:"
# 	user_input3 = gets.to_f
# 	puts "Calculating..."
# 	puts "The result of #{user_input1} #{user_input2} #{user_input3} is..."
# 	calculation(user_input1, user_input2, user_input3) 
# end

# def calculation(num1,operator,num2)
# 	if operator == '+'
# 		puts num1 + num2
# 	elsif operator == '-'
# 		puts num1 - num2
# 	elsif operator == '*'
# 		puts num1 * num2
# 	elsif operator == '/'
# 		puts num1 / num2
# 	else 
# 		puts "User input error. I only support operators +, -, *, /. Please try again"
# 		menu
# 	end
# end
@num = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def first_number
	puts "Enter your first number:"
	user_input1 = gets.strip
	validate_one(user_input1)
end

def validate_one(num1)
	if @num.include?(num1)
		modifier(num1.to_f)
	else
		puts "User input error. Please use a number."
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
	if @num.include?(num2)
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
	repeat
end

def repeat
	puts "Perform another calculation? Y/N"
	repeat = gets.strip.downcase.to_s
	if repeat == "y"
		first_number
	else
		puts "Have a nice day!"
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