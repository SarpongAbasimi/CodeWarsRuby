array =[1]

def count_positives_sum_negatives(lst)
return [] if lst.empty?
  myaddition=lst.select{|ele| ele < 0}.reduce(:+)
  mycount=lst.count{|pos| pos > 0}
    if myaddition === nil
    return[mycount,0]
  else
    return[mycount,myaddition]
  end
end

puts count_positives_sum_negatives(array)

def count_pos_sum_neg(arr)
  return [] if arr.empty?
  arr.each_with_object([0,0]) do |n,a|
    a[0] += 1 if n > 0
    a[1] += n if n < 0
  end
end
