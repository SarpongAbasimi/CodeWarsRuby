def is_square(x)
    x >= 0 ? Math.sqrt(x) % 1 === 0 : false
end

puts is_square()
