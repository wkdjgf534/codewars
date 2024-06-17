// Package main provides test tasks from codewars
package main

import (
	"testing"
)

func TestHighAndLowAlternative(t *testing.T) {
	type args struct {
		in string
	}
	tests := []struct {
		name string
		args args
		want string
	}{
		{
			name: "when a string contains numbers",
			args: args{in: "1 2 3 4 5 6 7 8"},
			want: "8 1",
		},
		{
			name: "when an empty string",
			args: args{in: ""},
			want: "",
		},
		{
			name: "when a string contains identical numbers",
			args: args{in: "2 2 2 2 2"},
			want: "2 2",
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := HighAndLowAlternative(tt.args.in); got != tt.want {
				t.Errorf("HighAndLowAlternative() = %v, want %v", got, tt.want)
			}
		})
	}
}

func TestHighAndLow(t *testing.T) {
	type args struct {
		in string
	}
	tests := []struct {
		name string
		args args
		want string
	}{
		// TODO: Add test cases.
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := HighAndLow(tt.args.in); got != tt.want {
				t.Errorf("HighAndLow() = %v, want %v", got, tt.want)
			}
		})
	}
}
