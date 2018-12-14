def merge_arrays(arr1, arr2)
  concatArray = arr1.concat(arr2)
  return concatArray.uniq.sort {|x,y| x <=> y}
end

puts (merge_arrays([1,1,2,3,4], [5,6,7,8]))
