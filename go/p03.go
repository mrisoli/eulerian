package main

import (
	"math/big"
	"fmt"
)

func main() {
	zero := big.NewInt(0)
	one := big.NewInt(1)
	n := big.NewInt(600851475143)
	end := new (big.Int).Sqrt(n)
	answer := new (big.Int).Set(zero)
	for i := new(big.Int).Set(one); i.Cmp(end) < 0; i.Add(i, one) {
		if i.ProbablyPrime(0) && new(big.Int).Mod(n,i).Cmp(zero) == 0 {
			answer.Set(i)
		}
	}
	fmt.Println(answer)
}
