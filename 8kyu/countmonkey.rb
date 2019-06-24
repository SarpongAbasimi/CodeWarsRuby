def monkey_count(n)
  list_count = []
  1.upto(n) { | number |list_count << number }
  list_count
end

print(monkey_count(10))