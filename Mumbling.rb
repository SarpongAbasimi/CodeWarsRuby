#DoesNot return all multiple occuring words
#This could be a Kata where elements would have to appear once

def accum(s)
  tolower=s.downcase
  split=tolower.split("")
  count=1
  mydict= {}
  finalarray=[]
  split.collect do |elm|
    num = elm * count
    mydict[elm]=num
    count +=1
  end
  mydict.each do |keys ,value |
    finalarray.push(value.capitalize)
  end
  return finalarray.join("-")
end

################################################################
#This method repeat multiple occuring words
def accum(s)
  tolower=s.downcase.split("")
  myArray=[]
  count =1
  tolower.each do |elem|
    myArray << (elem * count).capitalize
    count +=1
  end
  return myArray.join("-")
end
