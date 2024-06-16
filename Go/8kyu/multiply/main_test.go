package main

import "testing"

func TestMultiply(t *testing.T) {
	type args struct {
		a int
		b int
	}
	tests := []struct {
		name string
		args args
		want int
	}{
		{
			name: "when positive numbers",
			args: args{a: 3, b: 2},
			want: 6,
		},
		{
			name: "when zero is present",
			args: args{a: 3, b: 0},
			want: 0,
		},
		{
			name: "when negative numbers",
			args: args{a: -3, b: -2},
			want: 6,
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := Multiply(tt.args.a, tt.args.b); got != tt.want {
				t.Errorf("Multiply() = %v, want %v", got, tt.want)
			}
		})
	}
}
