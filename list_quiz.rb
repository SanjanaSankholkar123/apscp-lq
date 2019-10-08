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

# puts bigger_two([1, 2], [3, 4]) # [3, 4]
# puts bigger_two([1, 7], [4, 4]) # [1, 7]
# puts bigger_two([5, 6], [2, 2]) # [5, 6]

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# series_up
def series_up(n)
  array = []
  g1 = [1]
  g2 = [1, 2]
  g3 = [1, 2, 3]
  g4 = []
  if n == 1
    return "#{g1}" # Looking back at my bigger_two code, I realized I was being stupid so I decided not to do that for these arrays
  end
  if n == 2
    pattern = g1 + g2
    array.push(pattern)
    return "#{array}"
  end
  if n == 3
    pattern = g1 + g2 + g3
    array.push(pattern)
    return "#{array}"
  end
  if n > 3
    g4.push(n)
    pattern = g1 + g2 + ((g3)*(n - 2)) + g4
    array.push(pattern)
    return "#{array}"
  end
end

puts series_up(1) # [1]
puts series_up(2) # [1, 1, 2]
puts series_up(3) # [1, 1, 2, 1, 2, 3]
puts series_up(4) # [1, 1, 2, 1, 2, 3, 1, 2, 3, 4]
