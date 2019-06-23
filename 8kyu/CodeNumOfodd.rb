=beginGiven a number n, return the number of positive odd numbers
oddCount(7) //=> 3, i.e [1, 3, 5]
=end

def myFunc(n)
  mul= Proc.new{|x| x%2 != 0}
  return ((1...n).to_a.select(&mul)).length
end
