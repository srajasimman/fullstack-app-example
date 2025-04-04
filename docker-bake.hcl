variable "REGISTRY_REPO" {
  default = "srajasimman"  
}

variable "APP_BACKEND_HOST" {
  default = "backend:5000"
}

variable "FRONTEND_VERSION" {
  default = "latest"
}

variable "BACKEND_VERSION" {
  default = "latest"
}

group "default" {
  targets = ["backend", "frontend"]
}

target "backend" {
  context = "./backend"
  dockerfile = "./Dockerfile"
  tags = ["${REGISTRY_REPO}/fullstack-app-backend:latest"]
}

target "frontend" {
  context = "./frontend"
  dockerfile = "./Dockerfile"
  args = {
    APP_BACKEND_HOST = "${APP_BACKEND_HOST}"
  }
  tags = ["${REGISTRY_REPO}/fullstack-app-frontend:${FRONTEND_VERSION}"]
}