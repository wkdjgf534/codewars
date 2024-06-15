package main

import (
	"testing"
)

func TestGetCount(t *testing.T) {
	type args struct {
		str string
	}
	tests := []struct {
		name      string
		args      args
		wantCount int
	}{
		{
			name:      "when a word contains vowel letters",
			args:      args{str: "vowel"},
			wantCount: 2,
		},
		{
			name:      "when a word does not contain vowel letters",
			args:      args{str: "sssss"},
			wantCount: 0,
		},
		{
			name:      "when an empty string",
			args:      args{str: ""},
			wantCount: 0,
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if gotCount := GetCount(tt.args.str); gotCount != tt.wantCount {
				t.Errorf("GetCount() = %v, want %v", gotCount, tt.wantCount)
			}
		})
	}
}
