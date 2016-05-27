

$pets = [
	{:name => "elephant", :talents => ["napping", "running"] },
	{:name => "tiger", :talents => ["eating", "running"] },
]

puts $pets.reject{|p| p[:talents].include? "napping" }

# puts pets