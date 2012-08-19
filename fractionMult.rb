#problem 40


i = String.new
sum = 0

while i.length != 1_000_001  do
	
	i << sum.to_s
	sum += 1

end

i.insert 1 , '.'
i = i.slice!(2..i.length)

p i[0].to_i * i[9].to_i * i[99].to_i * i[999].to_i * i[9999].to_i * i[99999].to_i * i[999999].to_i