#methodOne
def hello(*name)
  if name.empty?
    "Hello, World!"
  elsif name[0].length <1
    "Hello, World!"
  else
    "Hello, #{name[0].capitalize}!"
  end
end

#methodTwo
puts(hello("sarpong"))

def hello(name = "World")
  name.empty? ? "Hello, World!" : "Hello, #{name.capitalize}!"
end
