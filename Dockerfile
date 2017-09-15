FROM microsoft/windowsservercore
MAINTAINER smithyuk1@live.co.uk

RUN powershell -NoProfile -Command \
    "Invoke-Webrequest https://chocolatey.org/install.ps1 -UseBasicParsing | Invoke-Expression"

RUN "C:\ProgramData\chocolatey\choco install -y redis-64"

COPY redis.conf C:\\redis.conf

EXPOSE 6379
ENTRYPOINT ["redis-server.exe", "C:\\redis.conf"]
