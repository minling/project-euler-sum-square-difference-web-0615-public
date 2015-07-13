# Implement your object-oriented solution here!
class SumSquareDifference

  attr_accessor :num

  def initialize(num)
    @num = num
  end

  def sum_squares
    numbers = (1..num).to_a
    sum = numbers.collect do |number|
    number * number
    end
    sum.reduce(:+)
  end

  def square_sum
    numbers = (1..num).to_a
    sum = numbers.reduce(:+)
    sum * sum
  end

  def difference
    square_sum - sum_squares
  end

end