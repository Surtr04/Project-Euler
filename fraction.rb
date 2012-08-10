#problem 26

class String 

	def split_at(pos)

		i = 0
		str = String.new

		self.each_byte do |x|
			if i < pos
				str << x.chr
			else
				break
			end
			i+=1
		end
		str
	end


	def drop(count)
		
		str = String.new
		arr = self.split("")
		i = - count

		while i < 0 do
			str << arr[i]			
			i+=1
		end

		str
	end

end

(1..1000).each do |x|
	num = 1.quo(x).to_s

	if num.length >= 17 

	end

end

p "asdfghi".split_at(1)
p "asdfghi".drop(2)
