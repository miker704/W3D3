require 'byebug'
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
debugger
def exponentiation_2(b, expo)
    return 1 if expo == 0
    return b if expo == 1

    if expo.even?
        return exponentiation_2(b, expo / 2)**2
    else
        return b * (exponentiation_2(b, (expo - 1) / 2)) ** 2
    end
end

p exponentiation_2(2, 5)