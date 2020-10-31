def fibs(int, result = [0, 1])
  if int == 1
    result = 0
  elsif int == 2
    result = 0, 1
  else
    i = 2
    while i < int
      new_int = result[i - 2] + result[i - 1]
      result << new_int
      i += 1
    end
    result
  end
end

def fibs_rec(int)
  return 0 if int == 1
  return [0, 1] if int == 2

  fibs_rec(int - 1) << fibs_rec(int - 1)[-2] + fibs_rec(int - 1)[-1]
end

p fibs_rec(10)
