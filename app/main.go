package main

import (
    "fmt"
    "log"
    "net/http"
    "os"
)

func main() {
    logger := log.New(os.Stdout, "http: ", log.LstdFlags)
    http.HandleFunc("GET /", HelloServer)
    http.HandleFunc("GET /healthz", healthCheck)
    logger.Println("Server is starting...")
    logger.Println("Server is ready to handle requests at :8080")
    err := http.ListenAndServe(":8080", nil)
    if err != nil {
        logger.Fatal("ListenAndServe: ", err)
    }
}

func HelloServer(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Hello, world!")
}

func healthCheck(w http.ResponseWriter, r *http.Request) {
    w.WriteHeader(http.StatusNoContent)
}
