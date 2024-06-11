FROM fischerscode/flutter-sudo:3.22.2 as builder
# compile the api-server binary executable
WORKDIR /app
RUN sudo apt update && sudo apt install -y clang cmake git ninja-build pkg-config libgtk-3-dev liblzma-dev libstdc++-12-dev
RUN git clone --branch 0.0.6 https://github.com/a-givertzman/sss-computing-client sss-computing-client
RUN cd ./sss-computing-client && flutter build linux --release

FROM debian:12.2 as runner
WORKDIR /runner
RUN apt update && apt install -y libgtk-3-dev
COPY --from=builder /app/sss-computing-client/build/linux/x64/release/bundle ./
CMD ./sss_computing_client