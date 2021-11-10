# Write a program that collects 5 keys and 5 values from the user, and stores them in a hash. Write a function that accepts the hash as optional parameters and prints out an array of keys and an array of values. Call the function within your program so you know it works. (Question: Can you find online information on Ruby hash methods that will help with this function?) Call this program hash_to_array.rb.

def get(user_input)
  print("Enter #{user_input}: ")
  gets.chomp
end  

def collect(hash={})
  hash.merge({get("key") => get("value")})
end

def get_five 
  collect(collect(collect(collect(collect))))
end

def print_out(object = get_five)
  puts
  p object
  puts "-" * 40
  print("keys: " + object.keys.to_s, "\n",
     "values: " + object.values.to_s, "\n", "\n")
end  

puts
print_out
