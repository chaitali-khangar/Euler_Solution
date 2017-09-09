# Problem 21
# Amicable number
# Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

# Evaluate the sum of all the amicable numbers under 10000.

require 'prime'
def find_divisor(number)
	# we don't want number in its divisor
	return [] if number.eql?(1)
	primes, powers = number.prime_division.transpose
	return [1] if powers.nil?
	exponents = powers.map{|i| (0..i).to_a}
    divisors = exponents.shift.product(*exponents).map do |powers|
    primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
  end
  # we don't want number in its divisor
  divisors.sort.reject{|num| num == number}
end

def sum_of_amicable_number(range)
  amicable_pair = []
  (1..range).each do |num|
  	next if amicable_pair.flatten.include?(num)
  	divisors = find_divisor(num)
  	next if divisors.empty?
  	possible_pair_num = divisors.inject(:+)
  	next if possible_pair_num.eql?(num)
  	pair_num_divisors = find_divisor(possible_pair_num)
  	amicable_pair.push([num,possible_pair_num]) if pair_num_divisors.inject(:+) == num
  end
  amicable_pair.flatten.inject(:+)
end

p "Amicable number sum is #{sum_of_amicable_number(10000)}"