package main

import (
	"fmt"
	"os"

	"github.com/joho/godotenv"
)

func main() {
	err := godotenv.Load(".env.local")
	if err != nil {
		fmt.Println("Error loading .env file")
		return
	}
	fmt.Println(os.Getenv("POSTGRES_USER"))
}