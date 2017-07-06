# Problem 4
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

class Integer
  def palindrom?
    self.to_s.reverse.eql?(self.to_s)
  end
end
max_num = 1
(1..999).each do |first_num|
  (1..999).each do |second_num|
    product = first_num * second_num
    max_num = product if max_num < product && product.palindrom?
  end
end

puts max_num