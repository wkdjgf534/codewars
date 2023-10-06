package main

import "testing"

func TestSummation(t *testing.T) {
	type args struct {
		n int
	}
	tests := []struct {
		name string
		args args
		want int
	}{
		{
			name: "When n equals 5",
			args: args{n: 5},
			want: 15,
		},
		{
			name: "When n equals 100",
			args: args{n: 100},
			want: 5050,
		},
		{
			name: "When n equals 0",
			args: args{n: 0},
			want: 0,
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := Summation(tt.args.n); got != tt.want {
				t.Errorf("Summation() = %v, want %v", got, tt.want)
			}
		})
	}
}
