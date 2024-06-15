package main

import (
	"testing"
)

func TestRepeatStr(t *testing.T) {
	type args struct {
		repetitions int
		value       string
	}
	tests := []struct {
		name string
		args args
		want string
	}{
		{
			name: "when a string contains a word",
			args: args{repetitions: 2, value: "test"},
			want: "testtest",
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := RepeatStr(tt.args.repetitions, tt.args.value); got != tt.want {
				t.Errorf("RepeatStr() = %v, want %v", got, tt.want)
			}
		})
	}
}
