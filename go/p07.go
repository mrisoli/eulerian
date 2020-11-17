package main

import "fmt"

func solve() (result int) {
	primes := first(10001)
	return primes[10000]
}

func main () {
	fmt.Println(solve())
}
