def greet(greeting, names)
  names.each do |name|
    puts "#{greeting}, #{name}!"
  end
end


greet("Hello", ["jon", "constance", "ryan", "darcy"])