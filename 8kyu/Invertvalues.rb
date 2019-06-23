#Invert values
invert([1,2,3,4,5]) == [-1,-2,-3,-4,-5]
nvert([1,-2,3,-4,5]) == [-1,2,-3,4,-5]

def invert(input)
  input.collect do |x|
    if x > 0
      x*-1
    elsif x <= 0
      x.abs
    else
      []
    end
  end
end



#Refeactor
def invert(input)
  list.collect do |x|
     x > 0 ? x*-1 : x <= 0 ? x.abs : []
  end
end
puts invert([1,-2,3,-4,5])
