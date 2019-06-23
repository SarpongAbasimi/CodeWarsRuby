#This method works but is exceeds the time limit
def digital_root(n)
  myarray =[]
  return n if n <=9
  while n >= 9
   n=n.to_s.split("").collect {|x| x.to_i}.reduce (:+)
   myarray << n
 end
 return myarray.min
end

#Method 2
def digital_root(n)
  return n if n < 10
  output = n % 10 + digital_root(n / 10)
  output >= 10 ? digital_root(output) : output
end
puts digital_root(20)
