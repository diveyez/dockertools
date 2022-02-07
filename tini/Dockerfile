# Install tini for signal processing and zombie killing
ENV TINI_VERSION v0.18.0
ENV TINI_SIGN_KEY 595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7
RUN set -eux; \
    wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini"; \
    wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini.asc"; \
    export GNUPGHOME="$(mktemp -d)"; \
    gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$TINI_SIGN_KEY"; \
    gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini; \
    command -v gpgconf && gpgconf --kill all || :; \
    rm -r "$GNUPGHOME" /usr/local/bin/tini.asc; \
    chmod +x /usr/local/bin/tini; \
    tini --version