package main

import "net/http"

func main() {
	http.HandleFunc("/", helloWorld)
	http.ListenAndServe(":4000", nil)
}

func helloWorld(w http.ResponseWriter, r *http.Request) {
	w.Write([]byte("Hello World\n"))
}