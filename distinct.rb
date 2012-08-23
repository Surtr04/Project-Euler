#problem 29

arr = Array.new

(2..100).each do |a|
	(2..100).each do |b|
		arr << a**b
	end
end

p arr.uniq.size


