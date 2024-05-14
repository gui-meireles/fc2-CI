FROM golang:1.15

WORKDIR /app

#Caso utilize a versão 1.19^ do Go, descomente a linha debaixo
#RUN go mod init teste

# Copia todos os arquivos do projeto pra gerar o build
COPY . .

RUN go build -o math

CMD ["./math"]