package main

import (
	"movie-discovery-app/backend/db"

	"github.com/gin-gonic/gin"
)

func main() {
	println("Starting server...")
	err := db.InitializeDatabase("./movie_discovery.db")
	if err != nil {
		println("Database initialization failed:", err.Error())
		return
	}
	println("Database initialized successfully")
	r := gin.Default()

	// Serve static frontend files
	r.Static("/static", "../frontend")
	r.LoadHTMLFiles("../frontend/index.html")

	r.GET("/", func(c *gin.Context) {
		c.HTML(200, "index.html", nil)
	})

	println("Server running on: http://localhost:8080")
	r.Run(":8080")
}
