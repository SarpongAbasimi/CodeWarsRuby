=begin

Description

You've been working with a lot of different file types recently as your interests have broadened.

But what file types are you using the most? With this question in mind we look at the following problem.

Given a List/Array of Filenames (strings) files return a List/Array of string(s) contatining the most common extension(s). If there is a tie, return a sorted list of all extensions.

Important Info:

Don't forget, you've been working with a lot of different file types, so expect some interesting extensions/file names/lengths in the random tests.
Filenames and extensions will only contain letters (case sensitive), and numbers.
If a file has multiple extensions (ie: mysong.mp3.als) only count the the last extension (.als in this case)


=end



def solve(files)
    newArray =[]
    counting = Hash.new 0
    files.each do |x|
        extensions= x.match(/\.\w+$/).to_s
        counting[ extensions] += 1
    end
    counting.select do |k,v| 
        if v == counting.values.max 
            newArray << k
        end
    end
    return newArray.sort()
end



files = ['Lakey - Better days.mp3', 
'Wheathan - Superlove.wav', 
'groovy jam.als', 
'#4 final mixdown.als', 
'album cover.ps', 
'good nights.mp3']
