#Find the odd int
#Given an array, find the int that appears an odd number of times.
#There will always be only one integer that appears an odd number of times.

def find_it(seq)
  myHash=Hash.new
  findodd = Proc.new {|key,value|
    if value%2 == 1
      return key
    end
  }
  seq.each do |x|
    if myHash.key?(x)
      myHash[x]+= 1
    else
      myHash[x]=1
    end
  end
  myHash.select(&findodd)
end

puts find_it([20,1,1,2,2,3,3,5,5,4,20,4,5])
