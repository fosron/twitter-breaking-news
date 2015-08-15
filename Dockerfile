# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go.
FROM golang

# Copy the local package files to the container's workspace.
ADD . /go/src/github.com/danesparza/twitter-breaking-news

# Build and install the app inside the container.
RUN go get github.com/danesparza/twitter-breaking-news/...

# Run the app by default when the container starts.
ENTRYPOINT /go/bin/twitter-breaking-news

# Document that the app listens on port 3000.
EXPOSE 3000