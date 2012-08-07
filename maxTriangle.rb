#problem 18

file = File.open("maxTriangle.txt")

str = String.new

file.each do |line|
	str << line
end

triangle = str.split("\n")

triangle = triangle.map do |x|
	x.split(" ").map do |x|
		x.to_i
	end
end


(triangle.length - 1).downto(0) do |a|
  0.upto(a-1) do |b|
    triangle [a-1][b] += [triangle [a][b], triangle [a][b+1]].max
  end
end

puts triangle[0]