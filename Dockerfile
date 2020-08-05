FROM rust AS base
RUN git clone https://github.com/BurntSushi/xsv.git
RUN cd xsv && cargo build --release

FROM debian:10-slim
COPY --from=base /xsv/target/release/xsv /usr/local/bin/xsv
