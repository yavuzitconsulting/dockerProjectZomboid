FROM steamcmd/steamcmd:ubuntu-22
WORKDIR /app
COPY . .
RUN gpg --keyserver pgpkeys.mit.edu --recv-key 871920D1991BC93C
RUN gpg -a --export 871920D1991BC93C | apt-key add -
RUN apt-get upgrade -y && apt-get update -y
RUN adduser --disabled-password pzuser
RUN mkdir /opt/pzserver
RUN chown pzuser:pzuser /opt/pzserver
RUN steamcmd +runscript /app/zomboid.txt