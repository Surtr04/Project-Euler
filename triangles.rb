#problem 102


def slope (x1,y1,x2,y2)

	(y1 - y2) / (x1 - x2)

end

def crossesY? (ax,bx)

	if ax<0 && bx>0
		return true
	end
  	
  	if bx<0 && ax>0 
  		return true
  	end

  	return false;

end

def yInt(px,py,m)

	py - (m * px)

end

def containsOrigin? (ax,ay,bx,by,cx,cy)

	mAB = slope(ax,ay,bx,by)
	mBC = slope(bx,by,cx,cy)
	mAC = slope(ax,ay,cx,cy)

	yAB = yInt(ax,ay,mAB)
	yBC = yInt(bx,by,mBC)
	yAC = yInt(cx,cy,mAC)

	c = 0

	c+=1 if yAB>0 && crossesY?(ax,bx)
  	c+=1 if yBC>0 && crossesY?(bx,cx)
  	c+=1 if yAC>0 && crossesY?(ax,cx)

 

  return c==1
end

triangles = File.open("triangles.txt").read

triangles = triangles.split("\n")

triangles = triangles.each do |x|
	p 
end


p triangles
