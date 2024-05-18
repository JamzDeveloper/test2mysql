FROM node:18.16.0-alpine3.17

# Crear el directorio de trabajo en la imagen Docker
WORKDIR /opt/app

# Copiar archivos de configuración del proyecto
COPY package.json package-lock.json ./

# Instalar las dependencias del proyecto
RUN npm install

# Copiar el resto de los archivos del proyecto
COPY src/ ./src/

# Exponer el puerto en el que la aplicación se ejecutará
EXPOSE 4002

# Comando para ejecutar la aplicación
CMD ["npm", "start"]
