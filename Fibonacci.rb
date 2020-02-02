def recursive_fib(num)
	# recursive_fib(num) : recursive_fib(num-1) + recursive_fib(num-2)
	# base case 
	if num < 2 
	return num 
	end 
	# rec step 
	return recursive_fib(num-1) + recursive_fib(num-2) 
end 

def iterative_fib(num)
 	arr = [0,1] 
 	(num-1).times do 
 		next_fib = arr[arr.length-1] + arr[arr.length-2]
 		arr.push(next_fib)
 	end 
 	arr.last
end 
#puts recursive_fib(35) == iterative_fib(35)

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end