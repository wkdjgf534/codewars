package main

import (
	"testing"
)

func TestSmallestIntegerFinder(t *testing.T) {
	var tests = []struct {
		name    string
		numbers []int
		want    int
	}{
		{
			name:    "when min value in the end of an array",
			numbers: []int{2, 5, 6, 7, 1},
			want:    1,
		},
		{
			name:    "when min value is the first value",
			numbers: []int{1, 3, 5, 6, 1},
			want:    1,
		},
	}

	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			if result := SmallestIntegerFinder(test.numbers); result != test.want {
				t.Errorf("got %v, want %v", result, test.want)
			}
		})
	}
}
