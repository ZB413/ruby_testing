#write your code here
def add(num1,num2)
  result = num1 + num2
end

def subtract(num1,num2)
  result = num1-num2
end

def sum(nums)
  result = 0
  nums.each{|val| result+=val}
  result
end

def multiply(nums)
  result = 1
  nums.each{|val| result*=val}
  result
end

def power(num1,num2)
  result = num1**num2
end

def factorial(num)
  temp = num
  result = 1
  if temp==0
    result = 0
  elsif temp>=1
    result = num
  end
  while temp>1 do
    result = result*(temp-1)
    temp-=1
  end
  result
end
