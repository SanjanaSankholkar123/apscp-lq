# three_even?
def three_even?(list)
  (list.size - 2).times do |i| # I used to have a count variable but I realized it was unnecessary.
    if list[i] % 2 == 0
      if list[i + 1] % 2 == 0 && list[i + 2] % 2 == 0 # I forgot to put the && sign and I didn't put the % 2 for the second condition.
        return true
      else
        return false
      end
    end
  end
  return false
end

puts three_even?([2, 1, 3, 5]) # false
puts three_even?([2, 4, 12, 5]) # true
puts three_even?([2, 1, 4, 6]) # false
puts three_even?([1, 4, 6, 4]) # true
puts three_even?([]) # false

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# bigger_two
def bigger_two(list1, list2)
  if (list1[0] + list1[1]) > (list2[0] + list2[1])
    return "#{list1}" # Before, I put each of the lists in the array in a weird way, but then I realized I overcomplicated it. So that's why I changed it to "#{listx}" from "[#{listx[0]}, #{listx[1]}]".
  elsif (list1[0] + list1[1]) < (list2[0] + list2[1])
    return "#{list2}"
  elsif (list1[0] + list1[1]) == (list2[0] + list2[1])
    return "#{list1}"
  end
end

puts bigger_two([1, 2], [3, 4]) # [3, 4]
puts bigger_two([1, 7], [4, 4]) # [1, 7]
puts bigger_two([5, 6], [2, 2]) # [5, 6]

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# series_up
def series_up(n)
  array = [] # We used this because we need to push in our answer into an array.
  n.times do |i| # We had to use nested loops because only one loop couldn't accomplish the task we needed.
    (i + 1).times do |m| # We had to make it (i + 1) because otherwise, i would start at 0 and we don't want that to happen.
      array.push(m + 1) # Again, we had to make it (m + 1) because it would start at zero and that messes up the pattern.
    end
  end
  return "#{array}"
end

puts series_up(1) # [1]
puts series_up(2) # [1, 1, 2]
puts series_up(3) # [1, 1, 2, 1, 2, 3]
puts series_up(4) # [1, 1, 2, 1, 2, 3, 1, 2, 3, 4]
