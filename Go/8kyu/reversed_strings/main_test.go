package main

import (
	"fmt"
	"testing"
)

func TestSolution(t *testing.T) {
	var tests = []struct {
		word string
		want string
	}{
		{"World", "dlroW"},
		{"Reaider", "rediaeR"},
	}

	for _, test := range tests {
		testName := fmt.Sprintf("%s", test.word)
		t.Run(testName, func(t *testing.T) {
			if result := Solution(test.word); result != test.want {
				t.Errorf("got %s, want %s", result, test.want)
			}
		})
	}
}
