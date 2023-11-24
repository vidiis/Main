# Usar una imagen base de Node.js, especificar la versión si es necesario
FROM node:14

# Establecer el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copiar el package.json y package-lock.json (si está disponible) al directorio de trabajo
COPY package*.json ./

# Instalar las dependencias del proyecto
RUN npm install

# Copiar los archivos del proyecto al directorio de trabajo del contenedor
COPY . .

# Exponer el puerto que tu aplicación utiliza
EXPOSE 3000

# Definir el comando para ejecutar tu aplicación
CMD ["node", "app.js"]
