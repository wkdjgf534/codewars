package main

import (
	"fmt"
	"testing"
)

func TestOpposite(t *testing.T) {
	var tests = []struct {
		value int
		want  int
	}{
		{2, -2},
		{-100, 100},
		{123, -123},
	}

	for _, test := range tests {
		testName := fmt.Sprintf("%d", test.value)
		t.Run(testName, func(t *testing.T) {
			if result := Opposite(test.value); result != test.want {
				t.Errorf("got %d, want %d", result, test.want)
			}
		})
	}
}
