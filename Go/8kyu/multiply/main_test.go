package main

import (
	"fmt"
	"testing"
)

func TestMultiply(t *testing.T) {
	var tests = []struct {
		a, b int
		want int
	}{
		{1, 1, 1},
		{2, 2, 4},
		{-2, 2, -4},
		{-4, -10, 40},
		{1, 0, 0},
	}

	for _, test := range tests {
		testName := fmt.Sprintf("%d,%d", test.a, test.b)
		t.Run(testName, func(t *testing.T) {
			if result := Multiply(test.a, test.b); result != test.want {
				t.Errorf("got %d, want %d", result, test.want)
			}
		})
	}
}
