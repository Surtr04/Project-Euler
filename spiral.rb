#problem 28

i = 1
sum = i
s = 2

until i >= 1001**2
	4.times { sum += i += s }
	s += 2
end

p sum