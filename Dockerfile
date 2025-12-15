FROM mintlify/mintlify:latest

WORKDIR /app

COPY . .

EXPOSE 3000

CMD ["mintlify", "dev", "--host", "0.0.0.0"]
