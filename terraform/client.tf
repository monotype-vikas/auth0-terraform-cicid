resource "auth0_client" "training_app" {
  name            = "Terraform Training Application"
  description     = "Application managed by Auth0 Terraform CI/CD"
  app_type        = "regular_web"
  oidc_conformant = true
  sso             = true

  callbacks = [
    "http://localhost:3000/callback"
  ]

  jwt_configuration {
    alg = "RS256"
  }
}