#Code to fix

# class FizzBuzz
#   def play(number)
#     return "fizz" if is_divisible_by(num, 3)
#     return "fizzbuzz" if is_divisible_by(num 15)
#     return "buzz" if is_divisible_by(num 5)
#     number
#   end
#
#   def is_divisib1e_by(number, divisor)
#     number / divisor == 0
#   end
# end
#
#
# fizzbuzz = FizzBuzz.new
# (1..100).each do |number|
#   puts fizzbuzz.play(number)
# end

#SOLUTION

class FizzBuzz

  def play(number)
    return "#{number} fizzbuzz" if is_divisible_by(number, 15)
    return "#{number} fizz" if is_divisible_by(number, 3)
    return "#{number} buzz" if is_divisible_by(number, 5)
    number
  end

  def is_divisible_by(number, divisor)
     number % divisor == 0
  end

end


fizzbuzz = FizzBuzz.new
array = (1..100).to_a
array.each do |number|puts fizzbuzz.play(number)
end
