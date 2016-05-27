flag = true
secret_number = 432

puts "Pick a number from 1 to 500"

while user_guess = gets.chomp.to_i != secret_number 
	

	if user_guess < secret_number
	puts "No, that's too low." 

	elsif user_guess > secret_number
	puts "Oh, too high"
	end
end

puts "LOOP IS COMPLETE!"