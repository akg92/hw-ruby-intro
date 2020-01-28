# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  total = 0
  arr.each { |element| total += element}
  return total 
end

def max_2_sum arr
  # YOUR CODE HERE
  max = 0
  ## empty array
  return 0 if arr.empty? 
  ## array with only one element
  return arr[0] if arr.length === 1

  ## sort and return sum
  arr.sort! 
  ## using negative index
  arr[-1] + arr[-2] 
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  ## base condition check
  return false if arr.length < 2

  ## sort for the linear search
  arr.sort!
  start_index , end_index = 0, arr.length - 1

  until  star_index < end_index do
    total = arr[star_index] + arr[end_index]
    ## return if equal
    return true if total === n
    ## increment based on condition
    if total > n 
       end_index -= 1 
    else
      star_index += 1
    end
  end

  ## final
  return false

end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /^[a-z]/i and s !~ /^[AEIOU]/i 
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  ## first part is validity check and second part is division check.
  s !~ /[^01]/ and s =~ /(^0?0$)|(.*00$)/ 
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize isbn, price  
    raise ArgumentError.new("isbn is empty") if isbn.empty?
    raise ArgumentError.new("Price is negaive") if price <= 0 

    @isbn = isbn
    @price = price
  end

  ## Getters and setters
  def isbn
    @isbn
  end

  def isbn=(isbn)
    @isbn=isbn
  end

  def price
    @price
  end
  
  def price=(price)
    @price=price
  end


  ## Price as string
  def price_as_string 
    "$%.2f" % @price
  end

   
end
