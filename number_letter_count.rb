# Problem 17
# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.


# Prerequisites:
# Install Rails and install to_words gem
# Github link for to_words gem: https://github.com/taimur-akhtar/to_words 

require 'rubygems'
require 'to_words'

letter_count = 0

(1..1000).each do |num|
  letter_count += num.to_words.split("").reject{ |char| [" ", "-"].include?(char)}.count
end
puts "Letter count from 1 to 1000 are #{letter_count}"