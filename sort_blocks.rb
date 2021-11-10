# The ruby array sort method can use a block to sort various arrays. The block must compare between two elements of the array, a and b. If a<b, it should evaluate to -1. If a==b, it should evaluate to 0. And if a>b, it should evaluate to 1. Here is the start of a program, which you should call sort_blocks.rb.

class Book
  attr_reader :author, :title, :count
  def initialize(author,title,count)
    @author = author
    @title = title
    @count = count
  end
  def to_s
    "author: #{author} title: #{title} count: #{count}"
  end
end

book_array = []
book_array.push(Book.new("Beatrice Potter","Peter Rabbit",25))
book_array.push(Book.new("Henry Fielding","Tom Jones",12))
book_array.push(Book.new("Bob Woodward","All the President's Men",30))

puts "\nSorted alphabetically by author"
puts "-" * 31

# TODO: omit titles, degrees
# TODO: change order of suffixes
# TODO: update for other languages 

# Sorts by last name
new_array = book_array.sort do |a,b|
  auth1_arr = a.author.downcase.split(" ")
  author1 = auth1_arr.pop
  author1 += " " + auth1_arr.join(" ")
  
  auth2_arr = b.author.downcase.split(" ")
  author2 = auth2_arr.pop
  author2 += " " + auth2_arr.join(" ")
  author1 <=> author2
  # if author1 > author2
  #   1
  # elsif author1 < author2
  #   -1
  # else
  #   0
  # end
end
puts new_array

puts "\nSorted alphabetically by title"
puts "-" * 30

def begins_with_article? (title_word)
  ["a", "an", "the"].include?(title_word)
end

# TODO: add articles from other languages 

# Omits articles from sort
new_array = book_array.sort do |a,b|
  title1 = a.title.downcase.split(" ")
  title1.shift if begins_with_article?(title1[0])
  title1 = title1.join(" ")

  title2 = b.title.downcase.split(" ")
  title2.shift if begins_with_article?(title2[0])
  title2 = title2.join(" ")
  
  title1 <=> title2
end
puts new_array

puts "\nSorted by number of copies in descending order"
puts "-" * 46

new_array = book_array.sort do |a,b|
  count1 = a.count
  count2 = b.count
  count2 <=> count1
end
puts new_array
puts

# Note the use of the spaceship operator <=>. It does what the commented out lines do, but on one line.

# Add to this program. Add additional calls to book_array.sort that pass blocks. For your first call to sort, pass a block so that the array is sorted in order of title, and print out the array. For your second call to sort, pass a block so that the array is sorted in order of copies, and print out the array.

