FROM node:18-alpine

WORKDIR /app

# Copiar archivos de configuración
COPY package*.json ./

# Instalar dependencias globalmente
RUN npm install -g mintlify

# Copiar todo el proyecto
COPY . .

# Exponer puerto
EXPOSE 3000

# Comando de inicio
CMD ["mintlify", "dev", "--host", "0.0.0.0", "--port", "3000"]
