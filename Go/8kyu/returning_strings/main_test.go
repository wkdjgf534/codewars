package main

import (
	"testing"
)

func TestGreet(t *testing.T) {
	type args struct {
		name string
	}
	tests := []struct {
		name string
		args args
		want string
	}{
		{
			name: "when a string contains a word",
			args: args{name: "Peter"},
			want: "Hello, Peter how are you doing today?",
		},
		{
			name: "when an empty string",
			args: args{name: ""},
			want: "Hello,  how are you doing today?",
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := Greet(tt.args.name); got != tt.want {
				t.Errorf("Greet() = %v, want %v", got, tt.want)
			}
		})
	}
}
