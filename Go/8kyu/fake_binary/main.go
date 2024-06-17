// Package main provides test tasks from codewars
package main

/*
Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. Return the resulting string.

Note: input will never be an empty string
*/

// FakeBin convers string of numbers to binary string
func FakeBin(x string) string {
	binStr := ""
	for _, char := range x {
		if char < 53 {
			binStr += "0"
		} else {
			binStr += "1"
		}
	}

	return binStr
}
