#Beginner - Reduce but Grow
def grow(x)
  count=1
  x.collect do |x|
    count *= x
  end
  return count
end


puts grow([1, 2, 3])
