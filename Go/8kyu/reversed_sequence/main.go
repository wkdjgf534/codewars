// Package main provides test tasks from codewars
package main

/*
Build a function that returns an array of integers from n to 1 where n>0.

Example : n=5 --> [5,4,3,2,1]
*/

// ReverseSeq creates a slice with reversed numbers
func ReverseSeq(n int) []int {
	numbers := []int{}

	for i := n; i != 0; i-- {
		numbers = append(numbers, i)
	}
	return numbers
}
