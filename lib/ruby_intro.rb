# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  for i in arr
    sum = sum + i
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  length = arr.size
  if length == 0
    return 0
  end
  if length == 1
    return arr[0]
  end
  sorted = arr.sort
  max_sum = sorted[length-1] + sorted[length-2]
  return max_sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  length = arr.size
  if length < 2
    return false
  end
  i = 0
  while i<length-1
    j = i+1
    while j<length
      if arr[i] + arr[j] == n
        return true
      end
      j = j + 1
    end
    i = i + 1
  end
  return false
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
