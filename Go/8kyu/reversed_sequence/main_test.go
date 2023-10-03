package main

import (
	"fmt"
	"testing"
)

func TestReverseSeq(t *testing.T) {
	var tests = []struct {
		n    int
		want []int
	}{
		{5, []int{5, 4, 3, 2, 1}},
		{3, []int{3, 2, 1}},
	}

	for _, test := range tests {
		testName := fmt.Sprintf("%d", test.n)
		t.Run(testName, func(t *testing.T) {
			if result := ReverseSeq(test.n); result[0] != test.want[0] {
				t.Errorf("got %d, want %d", result, test.want)
			}
		})
	}
}
