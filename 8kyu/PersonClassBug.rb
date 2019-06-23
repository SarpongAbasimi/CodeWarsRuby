class Person
  def initialize(name,surname,age)
    @name=name
    @surname=surname
    @age=age
  end

  def age
    return @age
  end

  def full_name
    return @name + " " +@surname
  end
end



person = Person.new('Yukihiro', 'Matsumoto', 47)
puts person.age
