# Symbols
puts :hello.object_id  
puts :hello.object_id 

# Interpreted vs. Compiled
# Interpreted means it needs an interpretor (translator) on the fly

	irb --simple-prompt

# Files and directories
# Basics of input and output (I/O)
# Input into the ruby program and output from it
	'puts' and 'print' output to commandline and IRB (puts with a line return)
# To get information into the program we can use
	'gets'
# We can assign whatever 'gets' is to a variable

	input = gets.chomp
	until input == 'stop'
		puts "You asked #{input}"
		puts '>'
		input = gets.chomp
	end

	puts "Thanks for playing"

# Look at Ruby class File I/O
# When accessing files keep \ and / in mind

	File.join('root', 'lib', 'file.rb')
# Think about Absolute vs. Relative paths

	__FILE__ # refers to this current file
	File.expand_path(__FILE__) #What is the full path to this file
	File.dirname(__FILE__) #Where the file lives
# 
	f = File.new('some_file.rb', 'w') #Create a new file in write mode
	f.close #to prevent accidentally writing to it, and release OS resources for I/O
# To read from a file, pass to a code block
	File.open('some_file.rb', 'r') do |file|
		puts file
	end
# r = read if exists, w = write or create file, a = append to end of a file, r+ = read and write, a+ = apprend and read and write (best are rwar+)

# Using 'w' will overrite an existing file
# To write to a file, file.puts or file.print before file.close 
	file.write "Hello there" #return number of characters
	file << "File" # apprends and returns file object
# To read use 'r' and gets
	file.gets.chomp #returns the line, then next line 'if file.gets'
	file.read(4) # to read 4 characters, then pointer is at 5
# To see if there is still a line
	while line = file.gets
# Or we can use file.each_line in teh code block
	File.open('some_file.rb', 'r') do |file|
		file.each_line {|l| puts l.upcase}
	end
# r+ lets us read and write and puts us at beginning of file
	file.pos # gives the position of the characters
	file.eof? #End of file?
	file.rewind #go back to pos 0
# writing beyong the end of the document may produce nil characters

# To rename a file
	File.rename('old', 'new')
# or Delete
	File.delete('old')

	require 'fileutils' #loads ruby code
# then cp, mv, rm, 
	Fileutils.copy('old', 'new')
	File.exist?('name')
	File.file?('name')
	File.readable('name')
	File.directory?('file')
	File.size('name') # in bytes (characters)
	File.basename('name')
	File.extname('name')

# On a file instance we can 
	File.dirname(__FILE__) # for working directory
	Dir.pwd
	Dir.chdir('..')
	Dir.entries('.')
	Dir.foreach('.') {|s| puts s}
	Dir.mkdir('name')
	Dir.delete('name')
