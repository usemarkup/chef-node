#!/usr/bin/env bats

@test "does node exist" {
    run /usr/bin/node -v
    [ "$output" = "v5.7.1" ]
}
