#Coding Meetup #4 - Higher-Order Functions Series - Find the first Python developer
list1 = [
  { firstName: 'Victoria', lastName: 'T.', country: 'Puerto Rico', continent: 'Americas', age: 30, language: 'Python' },
  { firstName: 'Mark', lastName: 'G.', country: 'Scotland', continent: 'Europe', age: 22, language: 'JavaScript' },

  { firstName: 'Emma', lastName: 'B.', country: 'Norway', continent: 'Europe', age: 19, language: 'Clojure' }
];


def get_first_python(users)
  users.each do|keys|
    if keys[:language]== "Python"
      return "#{keys[:first_name]}, #{keys[:country]}"
    end
  end
  "There will be no Python developers"
end
