
=begin
Write a function that when given a URL as a string, 
parses out just the domain name and returns it as a string. For example:
=end

#mySolution

def domain_name(url)
 url=url.split(/\.com\/?.*/).to_s.split(/https?:\/\/w{3}?\.?/)
 return url[1].to_s.sub!(/"\]/,'')
end


puts domain_name("http://github.com/carbonfive/raygun")




=begin
domain_name("http://github.com/carbonfive/raygun") == "github" 
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"
=end
