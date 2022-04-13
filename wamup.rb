
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

p sum_array_iterative([1,2,3])

#sum array recursive

def sum_array_recur(array)

    return 0 if array.empty?
    sum=0
    sum+=array.first + sum_array_recur(array[1..-1])
    return sum
end

p sum_array_recur([1,2,3])