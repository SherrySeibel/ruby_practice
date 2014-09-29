def fizzbuzz(number)
  return 'FizzBuzz' if is_devisible_by_fifteen?(number)
  return 'Fizz' if is_devisible_by_three?(number)
  return 'Buzz' if is_devisible_by_five?(number)
  number
end

def is_devisible_by_three?(number)
  is_devisible_by(number, 3)
end

def is_devisible_by_five?(number)
  is_devisible_by(number, 5)
end

def is_devisible_by_fifteen?(number)
  is_devisible_by(number, 15)
end

def is_devisible_by(number, devisor)
  number % devisor == 0
end
