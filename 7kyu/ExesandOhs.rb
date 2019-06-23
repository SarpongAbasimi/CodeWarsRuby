=begin
Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contain any char.

Examples input/output: XO("ooxx") => true
XO("xooxx") => false
=end
#Best Solutuion
def XO(str)
  str.downcase!
  str.count('o') == str.count('x')
end

#second solution
def name(input)
  mydict = Hash.new
  tolower=input.downcase
  split=tolower.split("")
  split.each do |element|
    if mydict.key?(element)=== true
      mydict[element] += 1
    else
      mydict[element]=1
    end
  end
  if mydict['o'] == mydict['x']
    return true
  elsif mydict["o"]!= mydict["x"]
    return false
  else
    return true
  end
end

#3rdsolution
##############################################
def name(input)
  mydict = Hash.new
  tolower=input.downcase
  split=tolower.split("")
  split.each do |element|
    if mydict.key?(element)=== true
      mydict[element] += 1
    else
      mydict[element]=1
    end
  end
  mydict['o'] == mydict['x']? true : mydict["o"]!= mydict["x"] ? false : true
end
