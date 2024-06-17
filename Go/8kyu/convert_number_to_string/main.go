// Package main provides test tasks from codewars
package main

import (
	"fmt"
	"strconv"
)

/*
We need a function that can transform a number (integer) into a string.

What ways of achieving this do you know?
Examples (input --> output):

123  --> "123"
999  --> "999"
-100 --> "-100"
*/

// NumberToString converts a number to a string
func NumberToString(number int) string {
	return strconv.Itoa(number)
}

// NumberToStringAlternatives converts a number to a string (alternative solution)
func NumberToStringAlternative(number int) string {
	return fmt.Sprintf("%d", number)
}
