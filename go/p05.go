package main

import "fmt"

func smallest_multiple() (result int) {
	lcm := 11
	for i := 12; i <= 20; i++ {
		lcm = LCM(lcm, i)
	}
	return lcm
}

func main () {
	fmt.Println(smallest_multiple())
}
