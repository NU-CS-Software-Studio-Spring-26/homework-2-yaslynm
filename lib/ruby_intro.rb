# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  return arr[0] if arr.length == 1
  return 0 if arr.empty?
  arr.max(2).sum
end

def sum_to_n? arr, n
  seen = {}
  arr.each do |num|
    return true if seen[n - num]
    seen[num] = true
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  !!(s =~ /\A[bcdfghjklmnpqrstvwxyz]/i)
end

def binary_multiple_of_4? s
  return false unless s.match?(/\A[01]+\z/)
  s == "0" || s.end_with?("00")
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$#{'%.2f' % @price}"
  end
end
