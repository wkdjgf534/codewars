package main

import (
	"fmt"
	"testing"
)

func TestNumberToString(t *testing.T) {
	var tests = []struct {
		number int
		want   string
	}{
		{2, "2"},
		{-100, "-100"},
		{123, "123"},
	}

	for _, test := range tests {
		testName := fmt.Sprintf("%d", test.number)
		t.Run(testName, func(t *testing.T) {
			if result := NumberToString(test.number); result != test.want {
				t.Errorf("got %s, want %s", result, test.want)
			}
		})
	}
}

func TestNumberToStringAlternative(t *testing.T) {
	var tests = []struct {
		number int
		want   string
	}{
		{2, "2"},
		{-100, "-100"},
		{123, "123"},
	}

	for _, test := range tests {
		testName := fmt.Sprintf("%d", test.number)
		t.Run(testName, func(t *testing.T) {
			if result := NumberToStringAlternative(test.number); result != test.want {
				t.Errorf("got %s, want %s", result, test.want)
			}
		})
	}
}
