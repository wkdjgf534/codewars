package main

import (
	"fmt"
	"testing"
)

func TestBoolToWord(t *testing.T) {
	var tests = []struct {
		word bool
		want string
	}{
		{true, "Yes"},
		{false, "No"},
	}

	for _, test := range tests {
		testName := fmt.Sprintf("%v", test.word)
		t.Run(testName, func(t *testing.T) {
			if result := BoolToWord(test.word); result != test.want {
				t.Errorf("got %s, want %s", result, test.want)
			}
		})
	}
}
