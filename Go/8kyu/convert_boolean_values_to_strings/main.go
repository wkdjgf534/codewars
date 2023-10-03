// Package main provides test tasks from codewars
package main

/*
Complete the method that takes a boolean value and return a "Yes" string for true, or a "No" string for false.
*/

// BoolToWord a simple converter boolean values to words Yes and No
func BoolToWord(word bool) string {
	if word {
		return "Yes"
	}
	return "No"
}
