package main

import (
	"fmt"
	"testing"
)

func TestEvenOrOdd(t *testing.T) {
	var tests = []struct {
		number int
		want   string
	}{
		{2, "Even"},
		{1, "Odd"},
		{-2, "Even"},
		{-1, "Odd"},
		{123, "Odd"},
		{222, "Even"},
	}

	for _, test := range tests {
		testName := fmt.Sprintf("%d", test.number)
		t.Run(testName, func(t *testing.T) {
			if result := EvenOrOdd(test.number); result != test.want {
				t.Errorf("got %s, want %s", result, test.want)
			}
		})
	}
}
