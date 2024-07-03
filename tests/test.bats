#!/usr/bin/env bats

load 'test_helper/bats-support/load'
load 'test_helper/bats-assert/load'

@test "Sprout is installed and executable" {
  run ddev exec sprout --version
  assert_success
  assert_output --partial "Sprout version"
}
