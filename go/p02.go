package main

import "fmt"

func fib() func() int {
	x := 0
	y := 1
	return func() int {
		z := x
		x, y = y, x+y
		return z
	}
}

func main() {
	s := 0
	f := fib()
	v := f()
	for v < 4000000 {
		v = f()
		if v % 2 == 0 {
			s += v
		}
	}
	fmt.Println(s)
}
