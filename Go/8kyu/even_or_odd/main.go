// Package main provides test tasks from codewars
package main

/*
Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.
*/

// EvenOrOdd returns the word "Even" or "Odd" according to input number
func EvenOrOdd(number int) string {
	if number%2 == 0 {
		return "Even"
	}
	return "Odd"
}
