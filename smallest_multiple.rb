# Problem 5
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

puts (1..20).reduce(:lcm)

# For more understanding
puts (1..20).inject(1){ |product,num| product = num.lcm(product)}