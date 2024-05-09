# Use an official Golang runtime as a base image
FROM golang:latest

# Set the working directory in the container to /app
WORKDIR /app

# Copy the local package files to the container's workspace
COPY . .

# Download and install any required third-party dependencies into the container
RUN go mod download

# Build the Go app
RUN go build -o main .

# Expose port 8080 to the outside world
EXPOSE 8080

# Command to run the executable
CMD ["./main"]
