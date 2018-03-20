def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  return 0 if array == []
  array.reduce(:+)
end

def multiply(*args)
  args.reduce(:*)
end

def power(base, exp)
  base ** exp
end

def factorial(n)
  return 0 if n <= 0
  (1..n).reduce(:*)
end
