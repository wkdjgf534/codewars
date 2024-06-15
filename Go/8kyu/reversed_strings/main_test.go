package main

import (
	"testing"
)

func TestSolution(t *testing.T) {
	type args struct {
		word string
	}
	tests := []struct {
		name string
		args args
		want string
	}{
		{
			name: "when a string contains a word",
			args: args{word: "Hello"},
			want: "olleH",
		},
		{
			name: "when an empty string",
			args: args{word: ""},
			want: "",
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := Solution(tt.args.word); got != tt.want {
				t.Errorf("Solution() = %v, want %v", got, tt.want)
			}
		})
	}
}
