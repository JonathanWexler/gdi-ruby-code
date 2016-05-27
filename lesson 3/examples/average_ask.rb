numbers= []
flag = true

while flag
	puts "Type a number: "
	answer = gets.chomp
	if answer == 'quit'
		flag = false
	else
		numbers.push answer.to_i
	end
	
	# Shorthand
	# hash = { :average => ($numbers.reduce(:+)/$numbers.count) }
	
	sum = 0
	numbers.each do |n|
		sum = sum + n
	end
	puts average = {:average => (sum.to_f/numbers.count)}

	# This will write answers to a new file and continuously overrite old responses
	f = File.new("output.txt", "w")
	f.write(average.inspect)
	# puts $numbers.inspect
end