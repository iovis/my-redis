set dotenv-load := true

default: server

# lists available tasks
@list:
    just --list

server:
    cargo run --bin server

client:
    cargo run --bin client

build:
    cargo build

dev:
    watchexec -w src/bin/server.rs -r -- just server

console:
    evcxr

open:
    gh repo view --web

clean:
    cargo clean

# run tests
test:
    cargo nextest run

# Open the DB
db:
    pgcli $DATABASE_URL
