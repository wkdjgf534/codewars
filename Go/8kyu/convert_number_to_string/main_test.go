package main

import (
	"testing"
)

func TestNumberToString(t *testing.T) {
	type args struct {
		number int
	}
	tests := []struct {
		name string
		args args
		want string
	}{
		{
			name: "when a positive number",
			args: args{number: 5},
			want: "5",
		},
		{
			name: "when a negative number",
			args: args{number: -5},
			want: "-5",
		},
		{
			name: "when zero",
			args: args{number: 0},
			want: "0",
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := NumberToString(tt.args.number); got != tt.want {
				t.Errorf("NumberToString() = %v, want %v", got, tt.want)
			}
		})
	}
}

func TestNumberToStringAlternative(t *testing.T) {
	type args struct {
		number int
	}
	tests := []struct {
		name string
		args args
		want string
	}{
		{
			name: "when a positive number",
			args: args{number: 5},
			want: "5",
		},
		{
			name: "when a negative number",
			args: args{number: -5},
			want: "-5",
		},
		{
			name: "when zero",
			args: args{number: 0},
			want: "0",
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := NumberToStringAlternative(tt.args.number); got != tt.want {
				t.Errorf("NumberToStringAlternative() = %v, want %v", got, tt.want)
			}
		})
	}
}
