#DoesNot return all
#This could be a Kata where elements would have to appear once

def longest(a1, a2)
  finalArray=[]
  mydict=Hash.new
  myarray=a1.concat(a2).split("")
  myarray.each do |elm|
    mydict[elm]=0
  end
  mydict.select do |key,value|
    finalArray << key
  end
  return finalArray.sort!.join('')
end

puts (longest("sssssarpong","sap"))

#Best solution
def longest(a, b)
  (a+b).chars.uniq.sort.join
end
