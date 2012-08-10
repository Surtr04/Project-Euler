#problem 97


class String

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

#modular exponentiation algorithm

def mod_exp(base,exp,mod)

	if exp == 0
		return 1
	end

	temp = mod_exp(base,exp/2,mod)

	if exp.even?
		return temp**2 % mod
	end

	return base * (temp ** 2) % mod

end


res = 28433 * mod_exp(2,7830457,10**10) + 1

p res.to_s