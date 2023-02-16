FROM steamcmd/steamcmd:ubuntu-18
WORKDIR /app
COPY . .
RUN apt-get upgrade -y && apt-get update -y
RUN adduser --disabled-password pzuser
RUN mkdir /opt/pzserver
RUN chown pzuser:pzuser /opt/pzserver