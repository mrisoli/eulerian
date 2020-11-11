package main

import "fmt"

func get_palindrome() int {
	l := 0
	for i := 999; i >= 100; i-- {
		for j := 999; j >= i; j-- {
			if l >= i * j {
				break
			}
			if is_palindrome(i * j) {
				l = i * j
			}
		}
	}
	return l
}

func main () {
	fmt.Println(get_palindrome())
}
