package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Println("hello world")
	fmt.Println(os.Getenv("GITHUB_EVENT_NAME"))
}
