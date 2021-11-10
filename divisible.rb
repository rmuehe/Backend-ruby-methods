#Write a method that returns in an array all the numbers between 1 and 100 that are divisible by 2 or 3 or 5. Then call the method in your program and print out what it returns. Call the program divisible.rb.

# TODO: compare with filter method
def divisible_by(num_arr, min=1, max=100)
  array = []
  while min <= max
    num_arr.each do |num| 
      if min % num == 0
        array << min
        break
      end
    end
    min += 1
  end
  array
end

puts "Find all integers 1-100 that divide evenly by 2, 3, 5", "\n"
print divisible_by([2,3,5]), "\n", "\n"

########### Uncomment to compare ##########
# class SimpleBenchmarker
#   def run(description, &block)
#     start_time = Time.now
#     block.call
#     end_time = Time.now
#     elapsed = end_time - start_time

#     # puts "\n#{description} results"
#     # puts "Elapsed time: #{elapsed} seconds"
#     elapsed
#   end
# end

# def filter_divisibles(num_arr, min=1, max=100)
#   (min..max).filter {|num|
#   # This expression increases the speed but it's not as dynamic:
#   # num % num_arr[0] == 0 || num % num_arr[1] == 0 || num % num_arr[2] == 0
#     modulo0 = false
#     until modulo0 
#       num_arr.each do |divisor| 
#         if num % divisor == 0
#           modulo0 = true
#           break
#         end   
#       end
#       break
#     end
#     modulo0  
#   }
# end

# puts "Filter out integers 1-100 that divide evenly by 2, 3, 5", "\n"
# print filter_divisibles([2,3,5]), "\n", "\n"

# elapsed_arr_divisible_by = []
# elapsed_arr_filter_divisibles = []

# benchmarker = SimpleBenchmarker.new
# 100.times {elapsed_arr_divisible_by << benchmarker.run("divisible_by") {100.times {divisible_by([2,3,5])}}}
# 100.times {elapsed_arr_filter_divisibles << benchmarker.run("filter_divisibles") {100.times {filter_divisibles([2,3,5])}}}

# puts "divisible_by x 10,000 elapsed 
#   #{elapsed_arr_divisible_by.reduce(:+).to_f / 100} seconds"
# puts "filter_divisibles x 10,000 elapsed 
#   #{elapsed_arr_filter_divisibles.reduce(:+).to_f / 100} seconds"

