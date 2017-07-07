# Problem 15
#Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
#How many such routes are there through a 20×20 grid?


def lattic_path(side)
	grid = Array.new(side) { Array.new(side) {1} }
	1.upto(side-1).each do |row|
	  grid[row][0] = 1
	  1.upto(side-1).each do |col|
	  	grid[row][col] = grid[row-1][col] + grid[row][col-1]
	  end
    end
	routes = grid.last[-1]
	routes
end
puts "please enter grid size"
side = gets.chomp.to_i
puts "Max Possible routes are #{lattic_path(side+1)}" 