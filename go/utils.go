package main

import "strconv"

func reverse(s string) (result string) {
	for _, v := range s {
		result = string(v) + result
	}
	return
}

func is_palindrome(n int) (result bool) {
	s := strconv.Itoa(n)
	for i := 0; i < len(s)/2; i++ {
		if s[i] != s[len(s)-i-1] {
			return false
		}
	}
	return true

}
