package main

import (
	"fmt"
	"testing"
)

func TestMakeNegative(t *testing.T) {
	var tests = []struct {
		x    int
		want int
	}{
		{0, 0},
		{1, -1},
		{-1, -1},
	}

	for _, test := range tests {
		testName := fmt.Sprintf("%d", test.x)
		t.Run(testName, func(t *testing.T) {
			if result := MakeNegative(test.x); result != test.want {
				t.Errorf("got %d, want %d", result, test.want)
			}
		})
	}
}
