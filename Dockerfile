FROM steamcmd/steamcmd:ubuntu-22
WORKDIR /app
COPY . .
RUN adduser --disabled-password pzuser
RUN mkdir /opt/pzserver
RUN chown pzuser:pzuser /opt/pzserver
RUN steamcmd +runscript /app/zomboid.txt