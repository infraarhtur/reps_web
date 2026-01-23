# Usa una imagen de Nginx para servir archivos estáticos
FROM nginx:alpine

# Copia todos los archivos del sitio al directorio de Nginx
COPY . /usr/share/nginx/html

# Copia la configuración personalizada de Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expone el puerto 8010
EXPOSE 8010

# Nginx se ejecuta automáticamente con la imagen
CMD ["nginx", "-g", "daemon off;"]
