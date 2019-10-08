# three_even?
def three_even?(list)
  count = 0
  (list.size - 2).times do |i|
    if list[i] % 2 == 0
      if list[i + 1] %2 == 0 || list[i + 2] == 0
        return true
      else
        return false
      end
    end
  end
  return false
end

# puts three_even?([2, 1, 3, 5]) # false
# puts three_even?([2, 4, 12, 5]) # true
# puts three_even?([2, 1, 4, 6]) # false
# puts three_even?([1, 4, 6, 4]) # true
# puts three_even?([]) # false

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# bigger_two
def bigger_two(list1, list2)
  if (list1[0] + list1[1]) > (list2[0] + list2[1])
    return "[#{list1[0]}, #{list1[1]}]" # I solved it like this because otherwise, it would just print out each number individually
  elsif (list1[0] + list1[1]) < (list2[0] + list2[1])
    return "[#{list2[0]}, #{list2[1]}]"
  elsif (list1[0] + list1[1]) == (list2[0] + list2[1])
    return "[#{list1[0]}, #{list1[1]}]"
  end
end

puts bigger_two([1, 2], [3, 4]) # [3, 4]
puts bigger_two([1, 7], [4, 4]) # [1, 7]
puts bigger_two([5, 6], [2, 2]) # [5, 6]
