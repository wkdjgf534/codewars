package main

import "testing"

func TestMakeNegative(t *testing.T) {
	type args struct {
		x int
	}
	tests := []struct {
		name string
		args args
		want int
	}{
		{
			name: "when a positive number",
			args: args{x: 5},
			want: -5,
		},
		{
			name: "when a negative number",
			args: args{x: -5},
			want: -5,
		},
		{
			name: "when zero",
			args: args{x: 0},
			want: 0,
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := MakeNegative(tt.args.x); got != tt.want {
				t.Errorf("MakeNegative() = %v, want %v", got, tt.want)
			}
		})
	}
}
