FROM aquabotwa/sanuwa-official:md-beta

RUN git clone https://github.com/whoisMED/WhatsMED /root/med
WORKDIR /root/med/
ENV TZ=Europe/Istanbul
RUN yarn add supervisor -g
RUN yarn install --no-audit

CMD ["node", "index.js"]
