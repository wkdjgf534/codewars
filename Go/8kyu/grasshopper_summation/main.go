// Package main provides test tasks from codewars
package main

// Summation adds all number from 0 to n
func Summation(n int) int {
	sum := 0
	for i := 0; n >= i; i++ {
		sum += i
	}
	return sum
}
