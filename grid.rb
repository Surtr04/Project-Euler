#problem 11

f = File.open("grid.txt")

#a = Array.new(20,Array.new(20))

rows = Array.new

f.each do |line|
	rows << line.chomp
end


grid = rows.map do |x| 
	x.split(" ").map do |x|
		x.to_i
	end
end

max = prod = 0


#horizontal search
(1..16).each do |x|
	(1..19).each do |y|
		prod = grid[y][x] * grid[y][x+1] * grid[y][x+2] * grid[y][x+3]
		max = prod if prod > max
	end
end


#vertical search
(1..19).each do |x|
	(1..16).each do |y|
		prod = grid[y][x] * grid[y+1][x] * grid[y+2][x] * grid[y+3][x] 
		max = prod if prod > max
	end
end

#vertical right
(1..16).each do |x|
	(1..16).each do |y|
		prod = grid[y][x] * grid[y+1][x+1] * grid[y+3][x+3] * grid[y+3][x+3]
		max = prod if prod > max 
	end
end


#vertical left
(1..16).each do |x|
	(1..16).each do |y|
		prod = grid[y][x+3] * grid[y+1][x+2] * grid[y+2][x+1] * grid[y+3][x]
		max = prod if prod > max 
	end
end


print max