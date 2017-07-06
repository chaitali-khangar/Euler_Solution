# Problem 9
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def product_of_phythagoran_triplet
	(1..500).each do |a|
		(a..500).each do |b|
			(b..500).each do |c|
				return [a,b,c] if((c ** 2 == a ** 2 + b ** 2) && (a+b+c == 1000))
			end
		end
	end
end

puts product_of_phythagoran_triplet.inject(:*)