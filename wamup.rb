# require 'byebug'
# recursive version 
def range_recur(start,finish)
    return [] if finish <= start
    arr=[start]
    arr+=range_recur(start+1,finish)
    return arr;
end

# p range_recur(1,5) 
# []


# sum iterative of an array

def sum_array_iterative(array)
    sum=0
    array.each {|ele| sum+=ele}
    return sum

end

# p sum_array_iterative([1,2,3])

#sum array recursive

def sum_array_recur(array)

    return 0 if array.empty?
    sum=0
    sum+=array.first + sum_array_recur(array[1..-1])
    return sum
end

# p sum_array_recur([1,2,3])

def exponentiation(b, expo)
    return 1 if expo == 0

    return b * exponentiation(b, expo - 1)
end

# p exponentiation(2, 5)
# debugger
def exponentiation_2(b, expo)
    return 1 if expo == 0
    return b if expo == 1

    if expo.even?
        return exponentiation_2(b, expo / 2)**2
    else
        return b * (exponentiation_2(b, (expo - 1) / 2)) ** 2
    end
end

# p exponentiation_2(2, 5)

class Array

    def deep_dup
        return self[0] if !self.is_a?(Array)
        arr=[]
        self.each do |ele|
            if !ele.is_a?(Array)
                arr<<ele
            else
                arr<<ele.deep_dup
            end
        end
        return arr
    end

end

# print [1,[2],[3,[4]]].deep_dup

def fib_iter(n)
    arr = [1, 1]
    return [] if n == 0 
    return [1] if n == 1
    (2...n).each do |i|
        arr.push(arr[i-2] + arr[i-1])
    end
    arr
end

# p fib_iter(0)
# p fib_iter(1)
# p fib_iter(5)

def fib_recur(n)
    return [] if n == 0 
    return [1] if n == 1
    return [1, 1] if n == 2

    arr = fib_recur(n - 1)
    arr << arr[-2] + arr[-1]
    arr
end

# p fib_recur(0)
# p fib_recur(1)
# p fib_recur(3)
# p fib_recur(4)
# p fib_recur(5)

# debugger
def binary_search(array, target)
    first = 0
    last = array.length - 1
    middle = (first + last) / 2
    return nil if first > last
    return middle if array[middle] == target
    if array[middle] > target 
        return  binary_search(array[first...middle],target)
    elsif array[middle] < target
        result= binary_search(array[middle+1..last],target)
        return nil if result == nil
        return middle+1 + result
    end
end

p binary_search([1, 2, 3], 1) # => 0
p binary_search([2, 3, 4, 5], 3) # => 1
p binary_search([2, 4, 6, 8, 10], 6) # => 2
p binary_search([1, 3, 4, 5, 9], 5) # => 3
p binary_search([1, 2, 3, 4, 5, 6], 6) # => 5
p binary_search([1, 2, 3, 4, 5, 6], 0) # => nil
p binary_search([1, 2, 3, 4, 5, 7], 6) # => nil