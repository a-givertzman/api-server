FROM rust:1.80.1 as builder
RUN apt update
# compile the api-server binary executable
WORKDIR /app
RUN git clone --depth 1 --branch internal_v0.2.1 https://github.com/a-givertzman/api-server.git api-server
RUN cd ./api-server && cargo build --release
# compile the sss-computing-strength binary executable
WORKDIR /back
RUN git clone --depth 1 --branch 0.0.46 https://github.com/a-givertzman/sss-computing-strength.git sss-computing-strength
RUN cd ./sss-computing-strength && cargo build --release

FROM debian:12.2 as runner
WORKDIR /package
COPY --from=builder /app/api-server/target/release/api-server ./
COPY --from=builder /back/sss-computing-strength/target/release/sss-computing-strength ./
COPY config.yaml ./config.yaml
CMD ./api-server
