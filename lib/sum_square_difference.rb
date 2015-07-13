# Implement your procedural solution here!


# The sum of the squares of the first ten natural numbers is, 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is, (1 + 2 + ... + 10)^2 = 55^2 = 3025
# Hence the difference between the square of the sum and the sum of the squares is 3025 − 385 = 2640. Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
  def sum_squares(num)
    numbers = (1..num).to_a
    sum = numbers.collect do |number|
    number * number
    end
    sum.reduce(:+)
  end

  def square_sum(num)
    numbers = (1..num).to_a
    sum = numbers.reduce(:+)
    sum * sum
  end

  def sum_square_difference(num)
    square_sum(num) - sum_squares(num)
  end
