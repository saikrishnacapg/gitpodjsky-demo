FROM salesforce/salesforcedx:7.115.0-slim
# Install sudo and curl to setup Node
USER root
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
&& apt-get -y install --no-install-recommends curl sudo gettext-base moreutils
# Install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash - \
&& sudo apt-get install -y nodejs

ENV SFDX_CONTAINER_MODE true
ENV DEBIAN_FRONTEND=dialog
ENV SHELL /bin/bash
