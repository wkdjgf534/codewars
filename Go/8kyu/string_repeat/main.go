// Package main provides test tasks from codewars
package main

import "strings"

/*
Write a function that accepts an integer n and a string s as parameters, and returns a string of s repeated exactly n times.
Examples (input -> output)

6, "I"     -> "IIIIII"
5, "Hello" -> "HelloHelloHelloHelloHello"
*/

// RepeatStr provides multiplication of input string
func RepeatStr(repetitions int, value string) string {
	return strings.Repeat(value, repetitions)
}
