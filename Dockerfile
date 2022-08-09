# Create build stage based on buster image
FROM golang:1.18-alpine3.15
# Create working directory under /app
WORKDIR /app
# Copy over all go config (go.mod, go.sum etc.)
COPY go.* ./
# Install any required modules
RUN go mod download
# Copy over Go source code
COPY *.go ./
# Copy file html to Docker
COPY ./html ./html
# Run the Go build and output binary under hello_go_http
RUN go build -o /dpu_ct519_lab5
# Make sure to expose the port the HTTP server is using
EXPOSE 8080
# Run the app binary when we run the container
ENTRYPOINT ["/dpu_ct519_lab5"]

