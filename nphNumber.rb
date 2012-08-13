#problem 46


class Integer

	def getTriangular
		(self*(self+1))/2
	end

	def getPentagonal
		(self*(3*self - 1))/2
	end

	def getHexagonal
		self*(2*self-1)
	end


	def hexagonalSeed
		a = (Math.sqrt(8*self+1)+1)/4

		if (/.*\.0$/).match(a.to_s)
			return a
		else
			return -1
		end
	end

	def pentagonalSeed
		a = (Math.sqrt(24*self+1)+1)/6

		if (/.*\.0$/).match(a.to_s)
			return a
		else
			return -1
		end
	end

	def triangularSeed
		a = (Math.sqrt(8*self+1)-1)/2

		if (/.*\.0$/).match(a.to_s)
			return a
		else
			return -1
		end
	end

end

t = p = h = 0
found = false
num = 0

(200000000..1000000000).each	do |x|

	if x.triangularSeed != -1 and
			x.pentagonalSeed != -1 and x.hexagonalSeed != -1
		p x
	end


end


#too slow
=begin
(13000..20000).each do |x|
	t = x.getTriangular

	x.downto(1).each do |y|
		p = y.getPentagonal
		if p == t
			y.downto(1).each do |z|
				h = z.getHexagonal
				if h == t
					num = h
					break
					found = true
				end
			end
			break if found
		end
		break if found
	end

end

p num
=end
