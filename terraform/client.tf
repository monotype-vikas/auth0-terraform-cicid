resource "auth0_client" "training_app" {
  name            = "Terraform Training Application"
  description     = "Application created using Terraform"
  app_type        = "regular_web"
  oidc_conformant = true

  callbacks = [
    "http://localhost:3000/callback"
  ]

  jwt_configuration {
    alg = "RS256"
  }
}