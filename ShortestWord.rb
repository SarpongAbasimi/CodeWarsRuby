def find_short(s)
  myArray=[]
  mysplit=s.split(" ")
  mysplit.select do |x|
    myArray.push(x.length)
  end
  return myArray.min
end

puts find_short("bitcoin take over the world maybe who knows perhaps")


#refractor
def find_short(s)
  s.split.map(&:size).min
end
