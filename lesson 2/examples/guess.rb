puts "guess!"
user_guess = gets.chomp.to_i
secret_number = 312

if user_guess < secret_number
	puts "Too low!"
elsif user_guess > secret_number
	puts "Too high!"
else
	puts "You guessed it. Wow maybe you're psychic...."
end