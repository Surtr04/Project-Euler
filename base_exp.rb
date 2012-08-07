#problem 99

f = File.open("base_exp.txt")
str = String.new

f.each do |line|
	str << line
end

str = str.split("\n")

str = str.map do |x|
	x.split(",").map do |x|
		x.to_i
	end
end

max = 0
op = 0
i = 1
final = 0

#x**y == y ln x
str.each do |line|
	op = line[1] * Math.log(line[0])
	max = op and final = i if op > max
	i+=1
end

p max
p final