FROM rust:1.83-bookworm

RUN rustup target add wasm32-unknown-unknown && \
    cargo install dioxus-cli diesel_cli

COPY . /srv/app
WORKDIR /srv/app

CMD dx serve --platform web --addr 0.0.0.0 --port 8000
