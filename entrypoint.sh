#!/bin/bash
set -euo pipefail # exit immediately when a command fails

go mod download
go test -v ./...
