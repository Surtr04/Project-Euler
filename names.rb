#problem 22

f = File.open("names.txt")

str = String.new

f.each do |x|
	str << x
end

str = str.gsub(/\"/,'')

names = str.split(",")
names.sort!

scores = 0
index = 0

names.each do |x|
	tmp = 0
	index = names.index(x)

	x.each_byte do |x|
		tmp += x - 64
	end

	scores += ((index+1) * tmp)

end

p scores

