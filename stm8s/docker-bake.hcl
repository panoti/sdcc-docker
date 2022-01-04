target "docker-metadata-action" {}

target "build" {
  inherits = ["docker-metadata-action"]
  context = "./stm8s/"
  dockerfile = "Dockerfile"
  platforms = [
    "linux/amd64",
    "linux/386"
  ]
}