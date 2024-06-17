package main

import "testing"

func TestOpposite(t *testing.T) {
	type args struct {
		value int
	}
	tests := []struct {
		name string
		args args
		want int
	}{

		{
			name: "when a positive number",
			args: args{value: 5},
			want: -5,
		},
		{
			name: "when a negative number",
			args: args{value: -5},
			want: 5,
		},
		{
			name: "when zero",
			args: args{value: 0},
			want: 0,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := Opposite(tt.args.value); got != tt.want {
				t.Errorf("Opposite() = %v, want %v", got, tt.want)
			}
		})
	}
}
