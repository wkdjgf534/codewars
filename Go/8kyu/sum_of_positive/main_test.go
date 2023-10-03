package main

import (
	"testing"
)

func TestPositiveSum(t *testing.T) {
	t.Run("collection of 5 numbers", func(t *testing.T) {
		numbers := []int{1, 2, 3, 4, 5}

		got := PositiveSum(numbers)
		want := 15

		if got != want {
			t.Errorf("got %d want %d given, %v", got, want, numbers)
		}
	})

	t.Run("collection of 5 negative numbers", func(t *testing.T) {
		numbers := []int{-1, -2, -3, -4, -5}

		got := PositiveSum(numbers)
		want := 0

		if got != want {
			t.Errorf("got %d want %d given, %v", got, want, numbers)
		}
	})
}
