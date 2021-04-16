# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  for i in arr
    sum = sum + i
  end
  return sum
end

def max_2_sum arr
  num1 = 0
  num2 = 0
  arr = arr.sort.reverse
  if arr[0].is_a? Integer
    num1 = arr[0]
  end
  if arr[1].is_a? Integer
    num2 = arr[1]
  end
  return num1 + num2
end

def sum_to_n? arr, n
  subtract = 0
  if arr == []
    return false
  end
  if arr.length == 1
    return false
  end

  for i in arr
    subtract = n - i
    for j in arr
      if i == j
        break
      end
      if j == subtract
        return true
      end
    end
  end

  return false
end

# Part 2

def hello(name)
  return "Hello, " + name.to_s
end

def starts_with_consonant? s
  consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
  
  if s == []
    return false
  end

  first = s[0, 1].downcase

  for letter in consonants
    if first == letter
      return true
    end
  end
  return false
end

def binary_multiple_of_4? s
  s = s.reverse

  unless s.delete('01') == ''
    return false
  end

  if s[0, 2] == '00'
    return true
  end
  if s[0] == '0' and s.length == 1
    return true
  end
  return false
end

# Part 3


class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize(b_i, b_p)
    if b_i == ''
      raise ArgumentError
    end
    if b_p <= 0
      raise ArgumentError
    end
    @isbn = b_i
    @price = b_p
  end

  def price_as_string
    return "$#{sprintf("%0.02f", @price)}"
  end
end

fiction = BookInStock.new("isbn1", 33.6)
puts(fiction.isbn)
puts(fiction.price)
fiction.price = 83.4
puts(fiction.price)
