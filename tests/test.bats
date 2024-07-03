#!/usr/bin/env bats

# Test pour vérifier que Sprout est installé et exécutable
@test "Sprout is installed and executable" {
  run ddev exec sprout --version
  assert_success
  assert_output --partial "Sprout version"
}
