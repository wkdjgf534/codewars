package main

import (
	"fmt"
	"testing"
)

func TestDisemvowel(t *testing.T) {
	var tests = []struct {
		comment string
		want    string
	}{
		{"This is a table", "Ths s  tbl"},
		{"SLACKWARE", "SLCKWR"},
		{"rest api", "rst p"},
		{"pAnCaKe wItH TeA", "pnCK wtH T"},
	}

	for _, test := range tests {
		testName := fmt.Sprintf("%s", test.comment)
		t.Run(testName, func(t *testing.T) {
			if result := Disemvowel(test.comment); result != test.want {
				t.Errorf("got %s, want %s", result, test.want)
			}
		})
	}
}
