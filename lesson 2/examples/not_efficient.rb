puts "guess!"
user_guess = gets.chomp.to_i
secret_number = 312

if user_guess < secret_number
	puts "Too low!"
end
if user_guess > secret_number
	puts "Too high!"
end
if user_guess == secret_number
	puts "You guessed it. Wow maybe you're psychic...."
end