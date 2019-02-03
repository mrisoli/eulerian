package main

import (
	"math"
	"fmt"
)

func main() {
	sum := 0
	for i := 0; i < 10; i++ {
		sum += int(1/(1 - math.Log10(float64(i))))
	}
	fmt.Println(sum)
}
