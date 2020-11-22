require 'pry'

def caesar_cipher(str, num)
  result = []

  split_string = str.split('')
  mapped_string = split_string.map do |item|
    lower = Array("a".."z")
    upper = Array("A".."Z")

    if lower.include?(item) == true
      sum = lower.index(item) + num
      if sum > 25
        sum %= 26
      end
      result.push(lower[sum])
    elsif upper.include?(item) == true
      sum = upper.index(item) + num
      if sum > 25
        sum = sum % 26
      else 
        sum = sum
      end
      result.push(upper[sum])
    else 
      result.push(item)
    end
  end
  final_string = result.join('')
  return final_string
end

caesar_cipher("What a string!", 5)
