  s = 0
  avg = 0
  count = 0
  for i in 1..100
	  unless (i%2 == 0)
	       s += i 
	       count += 1
	  end
  end
  avg = (s * 1.0)/count
  puts "Sum of odd numbers between 1 and 100 = #{s}"
  puts "Avg of odd numbers between 1 and 100 = #{avg}"
