package main

import "testing"

func TestPositiveSum(t *testing.T) {
	type args struct {
		numbers []int
	}
	tests := []struct {
		name string
		args args
		want int
	}{
		{
			name: "when positive numbers",
			args: args{numbers: []int{1, 2, 3, 4, 5}},
			want: 15,
		},
		{
			name: "when negative numbers",
			args: args{numbers: []int{-1, -2, -3, -4, -5}},
			want: 0,
		},
		{
			name: "when an empty collection",
			args: args{numbers: []int{}},
			want: 0,
		},
	}

	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := PositiveSum(tt.args.numbers); got != tt.want {
				t.Errorf("PositiveSum() = %v, want %v", got, tt.want)
			}
		})
	}
}
