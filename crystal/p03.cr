require "primes"

number = 600851475143
sqrt = (Math.sqrt(number)).floor.to_i32
p Primes::Primes.upto(sqrt).select{|n| number % n == 0}.max
