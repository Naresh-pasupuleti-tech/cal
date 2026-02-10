FROM ubuntu:20.04
WORKDIR /app
COPY . /app
RUN chmod +x /app/*.sh
CMD ["/app/main.sh"] 
