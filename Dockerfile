FROM rust:1.80.1 AS builder
WORKDIR /build
COPY Cargo.toml ./Cargo.toml
COPY Cargo.lock ./Cargo.lock
COPY src/ ./src/
RUN cargo build --release

FROM debian:12.6-slim AS runner
WORKDIR /app
COPY --from=builder /build/target/release/api-server ./
COPY config.yaml ./config.yaml
COPY extensions/ ./extensions/
CMD ./api-server