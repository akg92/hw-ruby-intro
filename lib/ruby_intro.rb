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
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
