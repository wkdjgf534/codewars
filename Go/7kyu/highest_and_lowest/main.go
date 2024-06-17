// Package main provides test tasks from codewars
package main

import (
	"fmt"
	"slices"
	"strconv"
	"strings"
)

/*

In this little assignment you are given a string of space separated numbers, and have to return the highest and lowest number.
Examples

HighAndLow("1 2 3 4 5")  // return "5 1"
HighAndLow("1 2 -3 4 5") // return "5 -3"
HighAndLow("1 9 3 4 -5") // return "9 -5"

Notes

    All numbers are valid Int32, no need to validate them.
    There will always be at least one number in the input string.
    Output string must be two numbers separated by a single space, and highest number is first.

*/

// HighAndLow returns the highest and lowest numbers from string
func HighAndLow(in string) string {
	if len(in) == 0 {
		return ""
	}

	strings := strings.Fields(in)
	integers := make([]int, 0, len(strings))

	for _, str := range strings {
		num, _ := strconv.Atoi(str)
		integers = append(integers, num)
	}

	minInt, maxInt := integers[0], integers[0]

	for _, value := range integers {
		if value < minInt {
			minInt = value
		}
		if value > maxInt {
			maxInt = value
		}
	}

	return fmt.Sprintf("%d %d", maxInt, minInt)
}

// HighAndLowAlternative returns the highest and lowest numbers from string for go 1.21 and higher
func HighAndLowAlternative(in string) string {
	if len(in) == 0 {
		return ""
	}

	strings := strings.Fields(in)
	integers := make([]int, 0, len(strings))

	for _, str := range strings {
		num, _ := strconv.Atoi(str)
		integers = append(integers, num)
	}

	maxInt, minInt := slices.Max(integers), slices.Min(integers)

	return fmt.Sprintf("%d %d", maxInt, minInt)
}
