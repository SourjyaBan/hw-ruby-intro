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
  result = "Hello, #{name}"
  return result
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s==''
    return false
  end
  first_letter = s[0]
  letter = first_letter.downcase
  ascii = letter.ord
  if ascii < 97 or ascii > 122
    return false
  end
  if letter == "a" or letter == "e" or letter == "i" or letter == "o" or letter == "u"
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  len = s.length
  if len == 0
    return false
  end
  binary_num = 0
  len = len - 1
  for i in 0..len
    letter = s[i]
    ascii = letter.ord
    if ascii != 48 and ascii != 49
      return false
    end
    if ascii == 49
      binary_num = binary_num + 2**(len - i)
    end
  end
  if binary_num%4==0
    return true
  else
    return false
  end
end
# Part 3

class BookInStock
  String @@isbn = ""
  Float @@price = 0.0
  def initialize(isbn, price)
    if isbn == "" or price <= 0.0
      raise ArgumentError
    end
    @@isbn = isbn
    @@price = price
  end
  def isbn
    @@isbn
  end
  def price
    @@price
  end
  def isbn=(new_isbn)
    @@isbn = new_isbn
  end
  def price=(new_price)
    @@price = new_price
  end
  def price_as_string
    new_price = price.to_s
    new_price = "$#{new_price}"
    if(!new_price.include?".")
      new_price = new_price + ".00"
      return new_price
    end
    len = new_price.length - 1
    dot_index = new_price.index('.')
    if (len - dot_index) != 2
      new_price = new_price + "0"
    end
    return new_price
  end
# YOUR CODE HERE
end
