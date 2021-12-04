#!/usr/bin/env ruby
colors = "=|/|/|=|/|/|=|/|/|=|/|/|**********|/|/|=|/|/|=|/|/|=|/|/|**********|/|/|=|/|/|=|/|/|=|/|/|**********|/|/|=|/|/|=|/|/|=|/|/|**********"
lines = 30
halfway = (lines/2).floor

colors_array = colors.split('')

# ouput first half
1.upto(halfway) do |i|
	first = colors_array.shift
	colors_array << first
	puts colors_array.join
end

# swap characters and output result
colors_array.length.times do |x|
	if colors_array[x] == '/'
		colors_array[x] = '\\'
	end
end
puts colors_array.join

# output second half
halfway.upto(lines) do |i|
	last = colors_array.pop
	colors_array.unshift(last)
	puts colors_array.join
end
