# Create a program block_function.rb. It should have a function do_calc that calls a block using a yield statement. The yield statement will pass the numbers 7 and 9 to a block, and then will print out the result. Call the do_calc function twice in your program. The first time, pass a block that adds the two numbers. The second time, pass a block that multiplies the two numbers. Your program should print out 16 and 63

#############
# With Blocks
def do_calc(x = 7, y = 9)
  puts yield(x, y) 
end

do_calc {|x, y| x + y}
do_calc {|x, y| x * y}

##############
## With lamdas
# def do_calc(x = 7, y = 9)
#   puts yield(x, y) 
# end

# add = -> (x, y) {x + y}
# multiply = -> (x, y) {x * y}

# do_calc(&add)
# do_calc(&multiply)

#############
## With procs
# def do_calc(x = 7, y = 9)
#   puts yield(x, y) 
# end

# add = proc {|x, y| x + y}
# multiply = proc {|x, y| x * y}

# do_calc(&add)
# do_calc(&multiply)


