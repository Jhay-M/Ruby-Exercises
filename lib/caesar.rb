def caesar_cipher(str, num)
  result = []

  split_string = str.split('')
  split_string.map do |item|
    lower = Array('a'..'z')
    upper = Array('A'..'Z')
    number = Array('0'..'9')

    if lower.include?(item) == true
      sum = lower.index(item) + num
      sum %= 26 if sum > 25
      result << lower[sum]
    elsif upper.include?(item) == true
      sum = upper.index(item) + num
      sum = sum > 25 ? sum % 26 : sum
      result << upper[sum]
    elsif number.include?(item)
      result << item.to_i + num
    else
      result << item
    end
  end
  result.join('')
end

p caesar_cipher('What a string2!', 5)
