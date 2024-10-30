FROM debian:bookworm-slim

ADD https://downloads.ndi.tv/SDK/NDI_SDK_Linux/Install_NDI_SDK_v6_Linux.tar.gz /tmp/Install_NDI_SDK_v6_Linux.tar.gz
RUN tar -xvf /tmp/Install_NDI_SDK_v6_Linux.tar.gz -C /tmp && \
    yes | /tmp/Install_NDI_SDK_v6_Linux.sh && \
    rm -rf /tmp/Install_NDI_SDK_v6_Linux.tar.gz /tmp/Install_NDI_SDK_v6_Linux.sh

ENV NDI_PORT=5959
ENV NDI_BIND_IP=0.0.0.0

ENTRYPOINT ["/bin/sh", "-c", "/NDI\\ SDK\\ for\\ Linux/bin/x86_64-linux-gnu/ndi-directory-service -bind \"$NDI_BIND_IP\" -port \"$NDI_PORT\""]
