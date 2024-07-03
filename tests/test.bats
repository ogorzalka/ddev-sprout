#!/usr/bin/env bats

# Charger les dépendances Bats
load 'test_helper/bats-support/load'
load 'test_helper/bats-assert/load'

# Test pour vérifier que Sprout est installé et exécutable
@test "Sprout is installed and executable" {
  run ddev exec sprout --version
  assert_success
  assert_output --partial "Sprout version"
}
