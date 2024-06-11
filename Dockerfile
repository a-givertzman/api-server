FROM rust:1.74 as builder
RUN apt update
# compile the api-server binary executable
WORKDIR /app
RUN git clone --branch internal_v0.1.21 https://github.com/a-givertzman/api-server.git api-server
RUN cd ./api-server && cargo build --release
# compile the sss-computing-strength binary executable
WORKDIR /back
RUN git clone --branch 0.0.6 https://github.com/a-givertzman/sss-computing-strength.git sss-computing-strength
RUN cd ./sss-computing-strength && cargo build

FROM debian:12.2 as packager
WORKDIR /package
COPY --from=builder /app/api-server/target/release/api-server ./
COPY --from=builder /back/sss-computing-strength/target/debug/sss-computing-strength ./
COPY .github/workflows/packaging/deb/make_package ./make_package
COPY config.yaml ./config.yaml
RUN mkdir ./target
# make and run the Debian package
RUN VERSION=0.1.21 ./make_package
RUN ARCH="$(dpkg --print-architecture)"; apt install ./target/api-server_0.1.21_${ARCH}.deb
CMD api-server
