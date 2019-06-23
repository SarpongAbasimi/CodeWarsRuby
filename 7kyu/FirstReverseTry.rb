#Simple Fun #20: First Reverse Try
def first_reverse_try(arr)
  if arr.empty?
    return arr
  elsif arr.length === 1
    return arr
  else
newArray=arr.map{|x| x}
newArray.pop
newArray.shift
newArray <<arr.first
return newArray.unshift(arr.last)
end
end

#othermethods
def first_reverse_try(arr)
  return arr if arr.empty?
  [arr.pop] + arr.rotate
end
