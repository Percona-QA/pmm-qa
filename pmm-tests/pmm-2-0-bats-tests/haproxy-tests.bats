#!/usr/bin/env bats

## haproxy

@test "PMM-T655 - Verify adding HAProxy as service" {
    run pmm-admin add haproxy --listen-port=8404
    echo "$output"
    [ "$status" -eq 0 ]
    echo "${output}" | grep "HAProxy Service added."
    run pmm-admin list
    echo "$output"
    [ "$status" -eq 0 ]
    echo "${output}" | grep "external-exporter        Unknown"
}

@test "PMM-T674 - Verify help for adding HAProxy service help" {
    run pmm-admin add haproxy --help
    echo "$output"
    [ "$status" -eq 0 ]
    echo "${output}" | grep "help"
}

@test "PMM-T674 - Verify help for adding HAProxy service version" {
    run pmm-admin add haproxy --help
    echo "$output"
    [ "$status" -eq 0 ]
    echo "${output}" | grep "version"
}

@test "PMM-T674 - Verify help for adding HAProxy service server url" {
    run pmm-admin add haproxy --help
    echo "$output"
    [ "$status" -eq 0 ]
    echo "${output}" | grep "server-url=SERVER-URL"
}

@test "PMM-T674 - Verify help for adding HAProxy service server insecure tls" {
    run pmm-admin add haproxy --help
    echo "$output"
    [ "$status" -eq 0 ]
    echo "${output}" | grep "server-insecure-tls"
}

@test "PMM-T674 - Verify help for adding HAProxy service debug" {
    run pmm-admin add haproxy --help
    echo "$output"
    [ "$status" -eq 0 ]
    echo "${output}" | grep "debug"
}

@test "PMM-T674 - Verify help for adding HAProxy service trace" {
    run pmm-admin add haproxy --help
    echo "$output"
    [ "$status" -eq 0 ]
    echo "${output}" | grep "trace"
}

@test "PMM-T674 - Verify help for adding HAProxy service json" {
    run pmm-admin add haproxy --help
    echo "$output"
    [ "$status" -eq 0 ]
    echo "${output}" | grep "json"
}

@test "PMM-T674 - Verify help for adding HAProxy service username" {
    run pmm-admin add haproxy --help
    echo "$output"
    [ "$status" -eq 0 ]
    echo "${output}" | grep "username=USERNAME"
}

@test "PMM-T674 - Verify help for adding HAProxy service password" {
    run pmm-admin add haproxy --help
    echo "$output"
    [ "$status" -eq 0 ]
    echo "${output}" | grep "password=PASSWORD"
}

@test "PMM-T674 - Verify help for adding HAProxy service scheme" {
    run pmm-admin add haproxy --help
    echo "$output"
    [ "$status" -eq 0 ]
    echo "${output}" | grep "scheme=http or https"
}

@test "PMM-T674 - Verify help for adding HAProxy service metrics path" {
    run pmm-admin add haproxy --help
    echo "$output"
    [ "$status" -eq 0 ]
    echo "${output}" | grep "metrics-path=/metrics"
}

@test "PMM-T674 - Verify help for adding HAProxy service listen port" {
    run pmm-admin add haproxy --help
    echo "$output"
    [ "$status" -eq 0 ]
    echo "${output}" | grep "listen-port=LISTEN-PORT"
}

@test "PMM-T674 - Verify help for adding HAProxy service node id" {
    run pmm-admin add haproxy --help
    echo "$output"
    [ "$status" -eq 0 ]
    echo "${output}" | grep "node-id=NODE-ID "
}

@test "PMM-T674 - Verify help for adding HAProxy service environment" {
    run pmm-admin add haproxy --help
    echo "$output"
    [ "$status" -eq 0 ]
    echo "${output}" | grep "environment=prod"
}

@test "PMM-T674 - Verify help for adding HAProxy service cluster" {
    run pmm-admin add haproxy --help
    echo "$output"
    [ "$status" -eq 0 ]
    echo "${output}" | grep "cluster=east-cluster"
}

@test "PMM-T674 - Verify help for adding HAProxy service replication set" {
    run pmm-admin add haproxy --help
    echo "$output"
    [ "$status" -eq 0 ]
    echo "${output}" | grep "replication-set=rs1"
}

@test "PMM-T674 - Verify help for adding HAProxy service custom labels" {
    run pmm-admin add haproxy --help
    echo "$output"
    [ "$status" -eq 0 ]
    echo "${output}" | grep "custom-labels=CUSTOM-LABELS"
}

@test "PMM-T674 - Verify help for adding HAProxy service metrics mode" {
    run pmm-admin add haproxy --help
    echo "$output"
    [ "$status" -eq 0 ]
    echo "${output}" | grep "metrics-mode=auto"
}

@test "PMM-T674 - Verify help for adding HAProxy service skip connection check" {
    run pmm-admin add haproxy --help
    echo "$output"
    [ "$status" -eq 0 ]
    echo "${output}" | grep "skip-connection-check"
}