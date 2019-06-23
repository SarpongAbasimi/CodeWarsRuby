list1 = [
  { firstName: 'Noah', lastName: 'M.', country: 'Switzerland', continent: 'Europe', age: 19, language: 'JavaScript' },
  { firstName: 'Maia', lastName: 'S.', country: 'Tahiti', continent: 'Oceania', age: 28, language: 'JavaScript' },
  { firstName: 'Shufen', lastName: 'L.', country: 'Taiwan', continent: 'Asia', age: 35, language: 'HTML' },
  { firstName: 'Sumayah', lastName: 'M.', country: 'Tajikistan', continent: 'Asia', age: 30, language: 'CSS' }
];



def count_developers(list)
  myArray=[]
  list.each do |keys,value|
    if keys[:language] == "JavaScript" && keys[:continent]== "Europe"
      myArray.push((keys[:firstName]))
    end
  end
  return myArray.length
end
(count_developers(list1))
