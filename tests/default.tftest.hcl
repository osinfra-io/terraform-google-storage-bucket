# OpenTofu Tests
# https://opentofu.org/docs/cli/commands/test

# OpenTofu Mock Providers
# https://opentofu.org/docs/cli/commands/test/#the-mock_provider-blocks

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
