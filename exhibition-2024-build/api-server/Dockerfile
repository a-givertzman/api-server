FROM rust:1.74 as builder
RUN apt update
# compile the api-server binary executable
WORKDIR /app
RUN git clone --branch internal_v0.1.21 https://github.com/a-givertzman/api-server.git api-server
RUN cd ./api-server && cargo build --release
# compile the sss-computing-strength binary executable
WORKDIR /back
RUN git clone --branch 0.0.6 https://github.com/a-givertzman/sss-computing-strength.git sss-computing-strength
RUN cd ./sss-computing-strength && cargo build --release

FROM debian:12.2 as packager
WORKDIR /package
COPY --from=builder /app/api-server/target/release/api-server ./
COPY --from=builder /back/sss-computing-strength/target/release/sss-computing-strength ./
COPY config.yaml ./config.yaml
CMD ./api-server
