#!/bin/sh -l

go mod download
go test -v ./...
