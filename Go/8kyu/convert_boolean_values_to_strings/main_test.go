package main

import "testing"

func TestBoolToWord(t *testing.T) {
	type args struct {
		word bool
	}
	tests := []struct {
		name string
		args args
		want string
	}{
		{
			name: "when false",
			args: args{word: false},
			want: "No",
		},
		{
			name: "when true",
			args: args{word: true},
			want: "Yes",
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := BoolToWord(tt.args.word); got != tt.want {
				t.Errorf("BoolToWord() = %v, want %v", got, tt.want)
			}
		})
	}
}
