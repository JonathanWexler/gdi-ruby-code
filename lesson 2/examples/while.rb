puts "enter a number: "
user_input = gets.chomp.to_i

while user_input >= 0
	puts user_input.to_s + " times left.... "
	user_input = user_input - 1
end