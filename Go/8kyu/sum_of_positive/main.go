// Package main provides test tasks from codewars
package main

/*
You get an array of numbers, return the sum of all of the positives ones.

Example [1,-4,7,12] => 1 + 7 + 12 = 20

Note: if there is nothing to sum, the sum is default to 0.
*/

// PositiveSum adds positive numbers form slice
func PositiveSum(numbers []int) int {
	sum := 0
	for _, num := range numbers {
		if num > 0 {
			sum += num
		}
	}

	return sum
}
