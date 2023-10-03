package main

import (
	"fmt"
	"testing"
)

func TestGreet(t *testing.T) {
	var tests = []struct {
		name string
		want string
	}{
		{"Peter", "Hello, Peter how are you doing today?"},
		{"Eugene", "Hello, Eugene how are you doing today?"},
	}

	for _, test := range tests {
		testName := fmt.Sprintf("%s", test.name)
		t.Run(testName, func(t *testing.T) {
			if result := Greet(test.name); result != test.want {
				t.Errorf("got %s, want %s", result, test.want)
			}
		})
	}
}
