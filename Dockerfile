FROM python:3.10.8-slim
LABEL org.opencontainers.image.authors="Atishoo"

WORKDIR /app

ARG port=6800
ARG username=
ARG password=

RUN mkdir /etc/scrapyd && touch /etc/scrapyd/scrapyd.conf  \
    && echo "[scrapyd] \nbind_address = 0.0.0.0 \nhttp_port = ${port}\nusername = ${username}\npassword = ${password}\n" > /etc/scrapyd/scrapyd.conf \
    && pip install pip -U \
    && pip install scrapyd

EXPOSE 6800

CMD /usr/local/bin/scrapyd