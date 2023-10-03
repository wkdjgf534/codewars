package main

import (
	"fmt"
	"testing"
)

func TestGetCount(t *testing.T) {
	var tests = []struct {
		str  string
		want int
	}{
		{"vowel", 2},
		{"SLACKWARE", 3},
		{"rest api", 3},
		{"pAnCaKe with tea", 6},
	}

	for _, test := range tests {
		testName := fmt.Sprintf("%s", test.str)
		t.Run(testName, func(t *testing.T) {
			if result := GetCount(test.str); result != test.want {
				t.Errorf("got %d, want %d", result, test.want)
			}
		})
	}
}
