

pets = [
	{:name => "elephant", :talents => ["napping", "running"] },
	{:name => "tiger", :talents => ["eating", "running"] },
]

pets.each do |p| 

	if !p[:talents].include? "napping" 
		puts p
	end

end