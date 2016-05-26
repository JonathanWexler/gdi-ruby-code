num_bottles = 99

while num_bottles > 0
	puts num_bottles.to_s + " bottles of beer on the wall,
	#{num_bottles} bottles of beer, take one down, pass it
	around, #{num_bottles - 1} bottles of beer on the wall!"

	num_bottles = num_bottles - 1
end