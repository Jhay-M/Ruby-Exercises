require 'pry'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dictionary)
  down_case = str.downcase.split(' ')
  dictionary.reduce(Hash.new(0)) do |result, sub|
    i = 0
    loop do
      if down_case[i].include?(sub) == true
        result[sub] += 1
      end
      i += 1
      break if i == down_case.size
    end
    result
  end
end

substrings("Howdy partner, sit down! How's it going?", dictionary)

substrings("below", dictionary)