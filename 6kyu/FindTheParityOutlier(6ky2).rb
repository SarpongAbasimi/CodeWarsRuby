=begin
You are given an array (which will have a
length of at least 3, but could be very large) containing integers.
The array is either entirely comprised of odd integers or entirely comprised of
even integers except for a single integer N.
Write a method that takes the array as an argument and returns this "outlier" N.
=end
#ans
myarr= [160, 3, 1719, 19, 11, 13, -21]

def mycheck(input)
  evenArray = []
  oldArray =[]
  mapList=input.map{|x|x}.select{|x|  x%2==0? evenArray << x : oldArray << x }
  evenArray.length > oldArray.length ? oldArray[0] : oldArray.length > evenArray.length ? evenArray[0] : []
end

puts mycheck(myarr)
