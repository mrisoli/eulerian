package main

import "fmt"

func divisibleBy(n int) int {
	p := 999/n
	return (n * (p * (p + 1)))/2
}

func main() {
        fmt.Println(divisibleBy(3) + divisibleBy(5) - divisibleBy(15))
}

