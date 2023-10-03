package main

import (
	"fmt"
	"testing"
)

func TestRepeatStr(t *testing.T) {
	var tests = []struct {
		repetitions int
		value       string
		want        string
	}{
		{2, "Hello", "HelloHello"},
		{5, "?", "?????"},
	}

	for _, test := range tests {
		testName := fmt.Sprintf("%d,%s", test.repetitions, test.value)
		t.Run(testName, func(t *testing.T) {
			if result := RepeatStr(test.repetitions, test.value); result != test.want {
				t.Errorf("got %s, want %s", test.want, result)
			}
		})
	}
}
