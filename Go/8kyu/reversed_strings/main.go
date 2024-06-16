// Package main provides test tasks from codewars
package main

/*
Complete the solution so that it reverses the string passed into it.

'world'  =>  'dlrow'
'word'   =>  'drow'

*/

// Solution reverses input string
func Solution(word string) string {
	var reversedString string
	for _, char := range word {
		// string(char) - converts letter in decimal code to character
		reversedString = string(char) + reversedString
	}

	return reversedString
}
