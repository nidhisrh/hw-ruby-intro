# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  Integer s = 0
  arr.each do |i|
    s = s + i
  end
  return s
end

def max_2_sum arr
  Integer s = 0;

  if arr.length == 1
    s =  arr[0]
  elsif arr.length > 0
    a = -(2**(0.size * 8 -2))
    b = a
    arr.each do |i|
      if i > a
        b = a
        a = i
      else
        if i > b
          b = i
        end
      end
    end
    s = a+b
  end
  return s
end

def sum_to_n? arr, n
  res = false
  if arr.length > 1
    s = 0
    e = arr.length - 1
    arr = arr.sort
    while s < e do
      if arr[s] + arr[e] > n
        e = e-1
      elsif arr[s] + arr[e] < n
        s = s+1
      else
        res = true
        break
      end
    end
  end
  return res
end

# Part 2

def hello(name)
  return "Hello, "+name
end

def starts_with_consonant? s
  return s.match(/\A(?=[^aeiouAEIOU])(?=[a-zA-Z])/i)
end

def binary_multiple_of_4? s
  return s.match(/\A(([10]*00)|(0{1}))\Z/)
end

# Part 3

class BookInStock
  def initialize(isbn,price)
    if(isbn==''||price <= 0)
      raise ArgumentError, 'Invalid arguements'
    end
    @isbn = isbn
    @price = price
  end
  def price
    @price
  end
  def price=  (p)
    @price = p
  end
  def isbn
    @isbn
  end
  def isbn=  (i)
    @isbn = i
  end
  def price_as_string
    p = (@price*100)%100
    s =  p.to_i
    if(s==0)
      s="00"
    else
      s=s.to_s
    end
    return "$"+@price.to_i.to_s+"."+s
  end
end

