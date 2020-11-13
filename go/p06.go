package main

import "fmt"

func solve() (result int) {
	n := 100
	s := (n * (n + 1)) / 2
	return (s * s) - ((n * (n + 1) * ((2 * n) + 1)) / 6)
}

func main () {
	fmt.Println(solve())
}
