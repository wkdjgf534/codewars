package main

import "testing"

func TestDisemvowel(t *testing.T) {
	type args struct {
		comment string
	}
	tests := []struct {
		name string
		args args
		want string
	}{
		{
			name: "when string contains vowel letters",
			args: args{comment: "Hello there"},
			want: "Hll thr",
		},
		{
			name: "when string does not contain vowel letters",
			args: args{comment: "TTTTT, rrrrr"},
			want: "TTTTT, rrrrr",
		},
		{
			name: "when an empty string",
			args: args{comment: ""},
			want: "",
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := Disemvowel(tt.args.comment); got != tt.want {
				t.Errorf("Disemvowel() = %v, want %v", got, tt.want)
			}
		})
	}
}
