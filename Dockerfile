FROM rust:1.74 as builder
RUN apt update
WORKDIR /app
COPY src ./src
COPY Cargo.lock Cargo.toml ./
# compile the application binary executable
RUN cargo build --release

FROM debian:12.2 as packager
RUN apt update && apt install -y --no-install-recommends
WORKDIR /package
COPY --from=builder /app/target/release/api-server ./
COPY . .
# make the Debian package
CMD .github/workflows/packaging/deb/make_package
