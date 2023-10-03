package main

import (
	"testing"
)

func TestFakeBin(t *testing.T) {
	var tests = []struct {
		name string
		x    string
		want string
	}{
		{
			name: "when greater than 5",
			x:    "55555",
			want: "11111",
		},
		{
			name: "when less than 5",
			x:    "01234",
			want: "00000",
		},
		{
			name: "when mixtured numbers",
			x:    "516273",
			want: "101010",
		},
	}

	for _, test := range tests {
		t.Run(test.name, func(t *testing.T) {
			if result := FakeBin(test.x); result != test.want {
				t.Errorf("got %s, want %s", result, test.want)
			}
		})
	}
}
