package main

import (
	"fmt"
)

func getPrimeFactors(n int, primes []int) map[int]int {
	primeFacts := make(map[int]int) // keeps track of prime factor : exponent pairs
	for n != 1 {
		for i := 0; i < len(primes); i ++ {
			if n % primes[i] == 0 {
				val, ok := primeFacts[primes[i]]
				if !ok {
					val = 0
				}
				primeFacts[primes[i]] = val + 1
				n = n/primes[i]
				break
			}
		}
	}
	return primeFacts
}

func getPrimes(N int) []int {
	isComposite := make([]bool, N)
	primes := []int{}
	for i := 2; i < N; i ++ {
		if !isComposite[i] {
			primes = append(primes, i)
			for x := i+i; x < N; x += i {
				isComposite[x] = true
			}
		}
	}
	return primes
}

func totient(n int, primes []int) int {
	primeFacts := getPrimeFactors(n, primes)

	ans := n

	for prime := range primeFacts {
		ans = ans*(prime-1)/prime
	}
	return ans
}

func main(){
	primes := getPrimes(1000000)
	var sum = 0
	for i:= 2; i <= 1000000; i ++ {
		sum += totient(i, primes)
	}

	fmt.Println(sum)
}
