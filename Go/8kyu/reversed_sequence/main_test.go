package main

import (
	"reflect"
	"testing"
)

func TestReverseSeq(t *testing.T) {
	type args struct {
		n int
	}
	tests := []struct {
		name string
		args args
		want []int
	}{
		{
			name: "when a positive number",
			args: args{n: 3},
			want: []int{3, 2, 1},
		},
		{
			name: "when zero",
			args: args{n: 0},
			want: []int{},
		},
		{
			name: "when a negative number",
			args: args{n: -5},
			want: []int{5, 4, 3, 2, 1},
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := ReverseSeq(tt.args.n); !reflect.DeepEqual(got, tt.want) {
				t.Errorf("ReverseSeq() = %v, want %v", got, tt.want)
			}
		})
	}
}
