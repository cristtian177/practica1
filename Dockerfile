# Utiliza la imagen base de Node.js
FROM node:18

# Establece el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copia los archivos de configuración de Node.js y los instala
COPY package*.json ./
RUN npm install

# Copia el resto del código fuente
COPY . .

# Expone el puerto que Express escucha por defecto
EXPOSE 3000

# Define el comando para iniciar la aplicación
CMD ["npm", "start"]


