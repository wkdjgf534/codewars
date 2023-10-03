// Package main provides test tasks from codewars
package main

import "testing"

func TestNoSpace(t *testing.T) {
	tests := []struct {
		name string
		word string
		want string
	}{
		{
			name: "when a string contains whitespaces",
			word: "H e l l o , w o r l d",
			want: "Hello,world",
		},
		{
			name: "when a string is emoty",
			word: "",
			want: "",
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := NoSpace(tt.word); got != tt.want {
				t.Errorf("NoSpace() = %v, want %v", got, tt.want)
			}
		})
	}
}
