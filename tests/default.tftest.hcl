mock_provider "google" {}

run "default" {
  command = apply

  module {
    source = "./tests/fixtures/default"
  }
}

variables {
  environment = "mock-environment"
  project     = "mock-project"
}
