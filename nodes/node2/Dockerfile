FROM ethereum/client-go

WORKDIR /root/ethereum

COPY password.txt static-nodes.json* /root/ethereum/
COPY keystore /root/ethereum/keystore
COPY geth /root/ethereum/geth

ENTRYPOINT []

EXPOSE 8501 30311 30311/udp
